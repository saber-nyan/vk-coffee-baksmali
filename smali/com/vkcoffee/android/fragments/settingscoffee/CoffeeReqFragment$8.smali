.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;
.super Ljava/lang/Object;
.source "CoffeeReqFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


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


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->val$progress:Landroid/app/ProgressDialog;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->val$act:Landroid/app/Activity;

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method
