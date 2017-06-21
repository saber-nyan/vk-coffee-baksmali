.class Lcom/vkcoffee/android/NotificationButtonsReceiver$4;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "NotificationButtonsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/NotificationButtonsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/NotificationButtonsReceiver;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/NotificationButtonsReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/NotificationButtonsReceiver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkcoffee/android/NotificationButtonsReceiver$4;->this$0:Lcom/vkcoffee/android/NotificationButtonsReceiver;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 90
    return-void
.end method
