.class Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$1;
.super Ljava/lang/Object;
.source "MarketFilterPriceFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 55
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->access$000(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;->access$100(Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x7f10027c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
