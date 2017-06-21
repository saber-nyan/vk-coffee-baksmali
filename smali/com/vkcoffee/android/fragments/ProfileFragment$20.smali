.class Lcom/vkcoffee/android/fragments/ProfileFragment$20;
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
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 4246
    invoke-direct {p0, p1, p3}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 3

    .prologue
    .line 4262
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isDeactivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

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
    .locals 3
    .param p1, "image"    # I

    .prologue
    const/16 v2, 0x78

    .line 4252
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photo:Lcom/vkcoffee/android/Photo;

    if-nez v0, :cond_0

    .line 4253
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 4258
    :goto_0
    return-object v0

    .line 4255
    :cond_0
    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 4256
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    .line 4258
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0
.end method
