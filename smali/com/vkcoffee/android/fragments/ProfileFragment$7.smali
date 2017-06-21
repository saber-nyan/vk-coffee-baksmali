.class Lcom/vkcoffee/android/fragments/ProfileFragment$7;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->applyLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1735
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1736
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$26(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$21(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1737
    return v1

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$7;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    goto :goto_0
.end method
