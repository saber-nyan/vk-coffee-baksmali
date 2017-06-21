.class Lcom/vkcoffee/android/fragments/base/GridFragment$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreateLayoutManager()Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

.field final synthetic val$manager:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/base/GridFragment;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 106
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$2;, "Lcom/vkcoffee/android/fragments/base/GridFragment$2;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$2;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$2;->val$manager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$2;, "Lcom/vkcoffee/android/fragments/base/GridFragment$2;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$2;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$400(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lcom/vkcoffee/android/functions/IntFIntInt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$2;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$400(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lcom/vkcoffee/android/functions/IntFIntInt;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$2;->val$manager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/vkcoffee/android/functions/IntFIntInt;->f(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
