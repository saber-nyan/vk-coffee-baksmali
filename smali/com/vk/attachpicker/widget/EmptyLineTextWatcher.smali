.class public Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;
.super Ljava/lang/Object;
.source "EmptyLineTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final INSTANCE:Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;

    invoke-direct {v0}, Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;->INSTANCE:Lcom/vk/attachpicker/widget/EmptyLineTextWatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x9

    const/4 v6, 0x1

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 22
    new-array v0, v6, [C

    .line 23
    .local v0, "buf":[C
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 24
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 25
    invoke-interface {p1, v7, v6, v0, v7}, Landroid/text/Editable;->getChars(II[CI)V

    .line 26
    aget-char v5, v0, v7

    if-ne v5, v8, :cond_0

    .line 27
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 32
    add-int/lit8 v5, v2, -0x2

    add-int/lit8 v6, v2, -0x1

    invoke-interface {p1, v5, v6, v0, v7}, Landroid/text/Editable;->getChars(II[CI)V

    .line 33
    aget-char v4, v0, v7

    .line 35
    .local v4, "prevPrevChar":C
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p1, v5, v2, v0, v7}, Landroid/text/Editable;->getChars(II[CI)V

    .line 36
    aget-char v3, v0, v7

    .line 38
    .local v3, "prevChar":C
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p1, v2, v5, v0, v7}, Landroid/text/Editable;->getChars(II[CI)V

    .line 39
    aget-char v1, v0, v7

    .line 41
    .local v1, "curChar":C
    if-ne v1, v8, :cond_4

    if-eq v3, v8, :cond_2

    if-eq v3, v10, :cond_2

    if-ne v3, v9, :cond_4

    :cond_2
    if-eq v4, v8, :cond_3

    if-eq v4, v10, :cond_3

    if-ne v4, v9, :cond_4

    .line 45
    :cond_3
    add-int/lit8 v5, v2, 0x1

    const-string/jumbo v6, ""

    invoke-interface {p1, v2, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 31
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 13
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 18
    return-void
.end method
