.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->showNameInfoDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

.field private final synthetic val$finish:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;->val$finish:Z

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;->val$finish:Z

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 609
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$18;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 611
    :cond_0
    return-void
.end method
