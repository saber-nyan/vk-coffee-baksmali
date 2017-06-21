.class Lcom/vkcoffee/android/CheckCoffee$1;
.super Ljava/lang/Object;
.source "CheckCoffee.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/CheckCoffee;->WHO_WATCHING_THIS_CODE_FUCK_YOURSELF___I_FIND_YOU_AND_WILL_KILLING_VERY_SLOW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/CheckCoffee;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/CheckCoffee;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/CheckCoffee$1;->this$0:Lcom/vkcoffee/android/CheckCoffee;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 41
    const/4 v0, 0x1

    invoke-static {v0, v4}, Lcom/vkcoffee/android/LongPollService;->logOut(ZZ)V

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/CheckCoffee$1;->this$0:Lcom/vkcoffee/android/CheckCoffee;

    iget-object v0, v0, Lcom/vkcoffee/android/CheckCoffee;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    const-string v3, "package:com.vkcoffee.android"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 44
    return-void
.end method
