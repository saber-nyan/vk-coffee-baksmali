.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$8;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$8;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$8;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 208
    return-void
.end method
