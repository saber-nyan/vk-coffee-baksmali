.class final Lcom/vkcoffee/android/data/Messages$12;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->markAsRead(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I

.field final synthetic val$peer:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 1160
    iput p1, p0, Lcom/vkcoffee/android/data/Messages$12;->val$peer:I

    iput p2, p0, Lcom/vkcoffee/android/data/Messages$12;->val$id:I

    invoke-direct {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 1163
    iget v0, p0, Lcom/vkcoffee/android/data/Messages$12;->val$peer:I

    iget v1, p0, Lcom/vkcoffee/android/data/Messages$12;->val$id:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Messages;->setReadStateBefore(II)V

    .line 1164
    return-void
.end method
