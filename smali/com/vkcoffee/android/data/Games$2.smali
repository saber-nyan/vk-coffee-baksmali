.class final Lcom/vkcoffee/android/data/Games$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "Games.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Games;->hideRequestAll(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 60
    invoke-static {}, Lcom/vkcoffee/android/data/Games;->nullAppsCounter()V

    .line 61
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Games$2;->success(Ljava/lang/Boolean;)V

    return-void
.end method
