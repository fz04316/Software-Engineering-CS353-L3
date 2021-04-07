import {AfterViewInit, Component, OnInit, ViewChild} from '@angular/core';
import {ActivatedRoute, ParamMap} from '@angular/router';
import {ProductService} from '../../services/product.service';
import {CartService} from '../../services/cart.service';
import {ProductModelServer} from '../../models/product.model';
import {map} from 'rxjs/operators';


declare let $: any;
@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent implements OnInit {
  id: number;
  product;
  thumbimages: any[] = [];

  @ViewChild('quantity') quantityInput;
  constructor(private route: ActivatedRoute,
              private productService: ProductService,
              private cartService: CartService
  ) {
  }
  ngOnInit(): void {
    this.route.paramMap.pipe(
      map((param: ParamMap) => {
        // @ts-ignore
        return param.params.id;
      })
    ).subscribe(prodId => {
      this.id = prodId;
      this.productService.getSingleProduct(this.id).subscribe(prod => {
        this.product = prod;
        if (prod.images !== null) {
          this.thumbimages = prod.images.split(';');
        }
      });
    });

  }


  addToCart(id: number) {
    this.cartService.AddProductToCart(id, this.quantityInput.nativeElement.value);
  }

  Increase() {
    // tslint:disable-next-line:radix
    let value = parseInt(this.quantityInput.nativeElement.value);
    if (this.product.quantity >= 1){
      value++;

      if (value > this.product.quantity) {
        // @ts-ignore
        value = this.product.quantity;
      }
    } else {
      return;
    }

    this.quantityInput.nativeElement.value = value.toString();
  }

  Decrease() {
    // tslint:disable-next-line:radix
    let value = parseInt(this.quantityInput.nativeElement.value);
    if (this.product.quantity > 0){
      value--;

      if (value <= 0) {
        // @ts-ignore
        value = 0;
      }
    } else {
      return;
    }
    this.quantityInput.nativeElement.value = value.toString();
  }
}

