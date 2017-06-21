.class public Lcom/vkcoffee/android/ui/XEditText;
.super Landroid/widget/EditText;
.source "XEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;
    }
.end annotation


# instance fields
.field private keyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/XEditText;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/XEditText;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkcoffee/android/ui/XEditText;->keyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/vkcoffee/android/ui/XEditText$ZanyInputConnection;-><init>(Lcom/vkcoffee/android/ui/XEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/ui/XEditText;->keyListener:Landroid/view/View$OnKeyListener;

    .line 39
    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 40
    return-void
.end method
