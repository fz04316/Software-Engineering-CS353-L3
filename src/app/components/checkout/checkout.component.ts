import { Component, OnInit } from '@angular/core';
import {CartModelServer} from '../../models/cart.model';
import {CartService} from '../../services/cart.service';
import {OrderService} from '../../services/order.service';
import {Router} from '@angular/router';
import {NgxSpinnerService} from 'ngx-spinner';
import {FormBuilder, FormGroup, NgForm, Validators} from '@angular/forms';
import {ICreateOrderRequest, IPayPalConfig} from 'ngx-paypal';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent implements OnInit {
  public payPalConfig ?: IPayPalConfig;
  cartData: CartModelServer;
  cartTotal: number;
  showSpinner: boolean;
  checkoutForm: FormGroup;
  isSubmitted  =  false;
  constructor(private cartService: CartService,
              private orderService: OrderService,
              private router: Router,
              private  spinner: NgxSpinnerService,
              private fb: FormBuilder) {
    this.checkoutForm = this.fb.group({
      firstname: ['', [Validators.required]],
      lastname: ['', [Validators.required]],
      email: ['', [Validators.required, Validators.email]],
      phone: ['', [Validators.required]],

    });
  }

  ngOnInit(): void {
    this.initConfig();
    this.cartService.cartDataObs$.subscribe(data => this.cartData = data);
    this.cartService.cartTotal$.subscribe(total => this.cartTotal = total);
  }
  onCheckout() {

      this.spinner.show();
      this.cartService.CheckoutFromCart(1);

  }
  private initConfig(): void {
    this.payPalConfig = {
      currency: 'EUR',
      clientId: 'ARVegu43K5qlI65PGDVdA87ehCyaUTpVXxnB1F68RZAWMfyTrfel2COGW_h2DMVffreZfaAIxmwjIhuJ', // add paypal clientId here
      createOrderOnClient: (data) => <ICreateOrderRequest> {
        intent: 'CAPTURE',
        purchase_units: [{
          amount: {
            currency_code: 'EUR',
            value: '0.01',
            breakdown: {
              item_total: {
                currency_code: 'EUR',
                value: '0.01'
              }
            }
          },
          items: [{
            name: 'The Swag Coder',
            quantity: '1',
            category: 'DIGITAL_GOODS',
            unit_amount: {
              currency_code: 'EUR',
              value: '0.01',
            },
          }]
        }]
      },
      advanced: {
        commit: 'true'
      },
      style: {
        label: 'paypal',
        layout: 'vertical',
        size: 'small',
        color: 'blue',
        shape: 'rect'
      },
      onApprove: (data, actions) => {
        console.log('onApprove - transaction was approved, but not authorized', data, actions);
        actions.order.get().then(details => {
          console.log('onApprove - you can get full order details inside onApprove: ', details);
        });

      },
      onClientAuthorization: (data) => {
        console.log('onClientAuthorization - you should probably inform your server about completed transaction at this point', data);
      },
      onCancel: (data, actions) => {
        console.log('OnCancel', data, actions);

      },
      onError: err => {
        console.log('OnError', err);
      },
      onClick: (data, actions) => {
        console.log('onClick', data, actions);
      }
    };
  }

}

