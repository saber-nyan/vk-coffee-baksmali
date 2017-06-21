.class public Lcom/vk/attachpicker/widget/BackPressEditText;
.super Landroid/widget/EditText;
.source "BackPressEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vk/attachpicker/widget/BackPressEditText;->callback:Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 35
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/BackPressEditText;->callback:Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/vk/attachpicker/widget/BackPressEditText;->callback:Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;

    invoke-interface {v1}, Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;->onBackPressed()V

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vk/attachpicker/widget/BackPressEditText;->callback:Lcom/vk/attachpicker/widget/BackPressEditText$OnBackPressedCallback;

    .line 31
    return-void
.end method
