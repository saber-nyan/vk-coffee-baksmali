.class Lcom/vkcoffee/android/GlobalMethodsCoffee$1$1;
.super Ljava/lang/Object;
.source "GlobalMethodsCoffee.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GlobalMethodsCoffee$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/GlobalMethodsCoffee$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/GlobalMethodsCoffee$1;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee$1$1;->this$1:Lcom/vkcoffee/android/GlobalMethodsCoffee$1;

    iput-object p2, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee$1$1;->val$activity:Landroid/app/Activity;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 376
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;-><init>()V

    .line 377
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v0, "bundleFirstStart":Landroid/os/Bundle;
    const-string v2, "id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 380
    iget-object v2, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f10001b

    const-string v4, "DialogsFragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 382
    return-void
.end method
