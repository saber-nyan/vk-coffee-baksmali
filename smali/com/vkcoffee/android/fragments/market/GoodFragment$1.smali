.class Lcom/vkcoffee/android/fragments/market/GoodFragment$1;
.super Ljava/lang/Object;
.source "GoodFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;->lambda$onCreateContentView$202(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2900(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$2000(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/support/v7/widget/RecyclerView;)V

    .line 264
    const/4 v0, 0x0

    return v0
.end method
