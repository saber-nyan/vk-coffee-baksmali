.class public abstract Lcom/vkcoffee/android/api/ResultlessCallback;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ResultlessCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract success()V
.end method

.method public final success(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;->success()V

    .line 26
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->success(Ljava/lang/Boolean;)V

    return-void
.end method
