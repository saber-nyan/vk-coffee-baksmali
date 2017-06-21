.class Lcom/vkcoffee/android/fragments/PostViewFragment$16;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->highlightComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$16;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$16;->val$pos:I

    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$16;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1718
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$16;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$16;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$42(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V

    .line 1719
    const/4 v0, 0x1

    return v0
.end method
