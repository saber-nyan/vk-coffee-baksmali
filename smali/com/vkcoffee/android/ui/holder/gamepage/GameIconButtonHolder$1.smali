.class Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "GameIconButtonHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lambda$updateNotificationsStateDelayed$704(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
