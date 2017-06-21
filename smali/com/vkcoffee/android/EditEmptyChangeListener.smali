.class public abstract Lcom/vkcoffee/android/EditEmptyChangeListener;
.super Ljava/lang/Object;
.source "EditEmptyChangeListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private isEmpty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/EditEmptyChangeListener;->isEmpty:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 13
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 19
    return-void
.end method

.method public abstract onEmptyChanged(Z)V
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 24
    .local v0, "e":Z
    :goto_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/EditEmptyChangeListener;->isEmpty:Z

    if-eq v0, v1, :cond_0

    .line 25
    iput-boolean v0, p0, Lcom/vkcoffee/android/EditEmptyChangeListener;->isEmpty:Z

    .line 26
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/EditEmptyChangeListener;->onEmptyChanged(Z)V

    .line 28
    :cond_0
    return-void

    .line 23
    .end local v0    # "e":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
