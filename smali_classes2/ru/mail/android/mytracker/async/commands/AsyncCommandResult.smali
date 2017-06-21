.class public Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
.super Ljava/lang/Object;
.source "AsyncCommandResult.java"


# instance fields
.field private isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess:Z

    .line 37
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess:Z

    .line 30
    return-void
.end method
