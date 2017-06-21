.class Lcom/vkcoffee/android/NotificationButtonsReceiver$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "NotificationButtonsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/NotificationButtonsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/NotificationButtonsReceiver;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/NotificationButtonsReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/NotificationButtonsReceiver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/NotificationButtonsReceiver$2;->this$0:Lcom/vkcoffee/android/NotificationButtonsReceiver;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 56
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/NotificationButtonsReceiver$2;->success(Ljava/lang/Integer;)V

    return-void
.end method
