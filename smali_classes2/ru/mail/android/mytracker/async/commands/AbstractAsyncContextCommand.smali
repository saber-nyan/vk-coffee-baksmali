.class public abstract Lru/mail/android/mytracker/async/commands/AbstractAsyncContextCommand;
.super Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;
.source "AbstractAsyncContextCommand.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lru/mail/android/mytracker/async/commands/AbstractAsyncCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lru/mail/android/mytracker/async/commands/AbstractAsyncContextCommand;->context:Landroid/content/Context;

    .line 34
    return-void
.end method
