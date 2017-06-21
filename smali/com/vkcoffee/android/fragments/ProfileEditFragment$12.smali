.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$12;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->onActivityResult(IILandroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$18(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    .line 313
    return-void
.end method
