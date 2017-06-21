.class Lcom/vkcoffee/android/fragments/ProfileFragment$18;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;
.source "ProfileFragment.java"


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


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 0
    .param p3, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 4184
    invoke-direct {p0, p1, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$18;)Lcom/vkcoffee/android/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 4184
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    return-object v0
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 3

    .prologue
    .line 4194
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$18$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->view:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$18$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$18;Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isDeactivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->hasPhoto:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 4190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    return-object v0
.end method
