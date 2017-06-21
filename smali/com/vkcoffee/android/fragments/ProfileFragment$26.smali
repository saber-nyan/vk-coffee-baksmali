.class Lcom/vkcoffee/android/fragments/ProfileFragment$26;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->buildInfoItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$usableRecyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

.field private final synthetic val$videoFeedAdapter2:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lme/grishka/appkit/views/UsableRecyclerView;Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$26;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$26;->val$usableRecyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$26;->val$videoFeedAdapter2:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    .line 4866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4868
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$26;->val$usableRecyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$26;->val$videoFeedAdapter2:Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 4869
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$26;->val$usableRecyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 4870
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4873
    return-void
.end method
