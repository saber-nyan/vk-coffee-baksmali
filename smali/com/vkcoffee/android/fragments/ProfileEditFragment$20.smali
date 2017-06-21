.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setUserPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

.field private final synthetic val$photo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;->val$photo:Ljava/lang/String;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 656
    .local v0, "profileEditFragment":Lcom/vkcoffee/android/fragments/ProfileEditFragment;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;->val$photo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;->val$photo:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$20;->val$photo:Ljava/lang/String;

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 657
    .local v1, "z":Z
    :goto_0
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->showUpdatePhotoDlg(Z)V

    .line 658
    return-void

    .line 656
    .end local v1    # "z":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
