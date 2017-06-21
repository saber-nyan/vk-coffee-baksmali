.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;
.super Ljava/lang/Object;
.source "CoffeeReqFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->openChat(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;Landroid/app/Activity;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$progress:Landroid/app/ProgressDialog;

    iput p4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$uid:I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$act:Landroid/app/Activity;

    new-instance v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$progress:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$uid:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;->val$act:Landroid/app/Activity;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$9;Landroid/app/ProgressDialog;ILjava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method
