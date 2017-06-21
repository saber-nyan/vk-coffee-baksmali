.class Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1$1;
.super Ljava/lang/Object;
.source "VotesFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener",
        "<",
        "Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1$1;->this$2:Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;)V
    .locals 3
    .param p1, "product"    # Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1$1;->this$2:Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;->this$1:Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1$1;->this$2:Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1;->this$1:Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$000(Lcom/vkcoffee/android/fragments/VotesFragment;)I

    move-result v1

    iget v2, p1, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;->votes:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/VotesFragment;->access$900(Lcom/vkcoffee/android/fragments/VotesFragment;I)V

    .line 276
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VotesFragment$ItemHolder$1$1;->onSuccess(Lcom/vkcoffee/android/api/store/GetGiftsStockBalance$VotesProduct;)V

    return-void
.end method
