.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;
.super Ljava/lang/Object;
.source "CoffeeReqFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;Landroid/app/ProgressDialog;ILjava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$progress:Landroid/app/ProgressDialog;

    iput p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$uid:I

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$act:Landroid/app/Activity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 207
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$uid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$title:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$act:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 210
    return-void
.end method
