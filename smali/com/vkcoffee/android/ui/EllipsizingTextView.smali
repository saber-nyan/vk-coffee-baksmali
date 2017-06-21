.class public Lcom/vkcoffee/android/ui/EllipsizingTextView;
.super Landroid/widget/TextView;
.source "EllipsizingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;
    }
.end annotation


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private final ellipsizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private fullText:Ljava/lang/String;

.field private isEllipsized:Z

.field private isStale:Z

.field private lineAdditionalVerticalPadding:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private programmaticChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->maxLines:I

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->maxLines:I

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->maxLines:I

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 41
    return-void
.end method

.method private createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8
    .param p1, "workingText"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    iget v6, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private resetText()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->getMaxLines()I

    move-result v4

    .line 96
    .local v4, "maxLines":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 97
    .local v5, "workingText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 98
    .local v0, "ellipsized":Z
    if-eq v4, v9, :cond_1

    .line 99
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v2

    .line 100
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 101
    iget-object v6, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->fullText:Ljava/lang/String;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 102
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 103
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 104
    .local v1, "lastSpace":I
    if-ne v1, v9, :cond_3

    .line 109
    .end local v1    # "lastSpace":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    const/4 v0, 0x1

    .line 113
    .end local v2    # "layout":Landroid/text/Layout;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->programmaticChange:Z

    .line 116
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iput-boolean v8, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->programmaticChange:Z

    .line 121
    :cond_2
    iput-boolean v8, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isStale:Z

    .line 122
    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isEllipsized:Z

    if-eq v0, v6, :cond_4

    .line 123
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isEllipsized:Z

    .line 124
    iget-object v6, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;

    .line 125
    .local v3, "listener":Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;
    invoke-interface {v3, v0}, Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;->ellipsizeStateChanged(Z)V

    goto :goto_1

    .line 107
    .end local v3    # "listener":Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;
    .restart local v1    # "lastSpace":I
    .restart local v2    # "layout":Landroid/text/Layout;
    :cond_3
    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 108
    goto :goto_0

    .line 118
    .end local v1    # "lastSpace":I
    .end local v2    # "layout":Landroid/text/Layout;
    :catchall_0
    move-exception v6

    iput-boolean v8, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->programmaticChange:Z

    throw v6

    .line 128
    :cond_4
    return-void
.end method


# virtual methods
.method public addEllipsizeListener(Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->maxLines:I

    return v0
.end method

.method public isEllipsized()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isEllipsized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isStale:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/EllipsizingTextView;->resetText()V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 79
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->programmaticChange:Z

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isStale:Z

    .line 83
    :cond_0
    return-void
.end method

.method public removeEllipsizeListener(Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/EllipsizingTextView$EllipsizeListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 138
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 72
    iput p2, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 74
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61
    iput p1, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->maxLines:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/EllipsizingTextView;->isStale:Z

    .line 63
    return-void
.end method
