.class public interface abstract Lcom/vkcoffee/android/data/PurchasesManager$Product;
.super Ljava/lang/Object;
.source "PurchasesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PurchasesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Product"
.end annotation


# virtual methods
.method public abstract getMerchantProductId()Ljava/lang/String;
.end method

.method public abstract getPaymentType()Lcom/vkcoffee/android/api/models/PaymentType;
.end method

.method public abstract getPrice()I
.end method

.method public abstract isFree()Z
.end method
