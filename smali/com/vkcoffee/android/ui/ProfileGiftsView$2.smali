.class Lcom/vkcoffee/android/ui/ProfileGiftsView$2;
.super Ljava/lang/Object;
.source "ProfileGiftsView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/ProfileGiftsView;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;

.field final synthetic val$giftItem:Lcom/vkcoffee/android/api/models/GiftItem;

.field final synthetic val$iv:Lcom/vkcoffee/android/ui/OverlayImageView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;Lcom/vkcoffee/android/ui/OverlayImageView;Lcom/vkcoffee/android/api/models/GiftItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ProfileGiftsView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->val$iv:Lcom/vkcoffee/android/ui/OverlayImageView;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->val$giftItem:Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->val$iv:Lcom/vkcoffee/android/ui/OverlayImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/OverlayImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->access$100(Lcom/vkcoffee/android/ui/ProfileGiftsView;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->this$0:Lcom/vkcoffee/android/ui/ProfileGiftsView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->access$000(Lcom/vkcoffee/android/ui/ProfileGiftsView;)Ljava/lang/ThreadGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->val$giftItem:Lcom/vkcoffee/android/api/models/GiftItem;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;->val$iv:Lcom/vkcoffee/android/ui/OverlayImageView;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;-><init>(Ljava/lang/ThreadGroup;Lcom/vkcoffee/android/api/models/GiftItem;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 154
    const/4 v0, 0x0

    return v0
.end method
