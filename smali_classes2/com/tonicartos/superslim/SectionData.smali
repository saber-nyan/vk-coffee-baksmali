.class public Lcom/tonicartos/superslim/SectionData;
.super Ljava/lang/Object;
.source "SectionData.java"


# instance fields
.field public final contentEnd:I

.field public final contentStart:I

.field public final firstPosition:I

.field public final hasHeader:Z

.field public final headerHeight:I

.field headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

.field public final headerWidth:I

.field final marginEnd:I

.field final marginStart:I

.field public final minimumHeight:I

.field public final sectionManager:Ljava/lang/String;

.field public final sectionManagerKind:I


# direct methods
.method public constructor <init>(Lcom/tonicartos/superslim/LayoutManager;Landroid/view/View;)V
    .locals 4
    .param p1, "lm"    # Lcom/tonicartos/superslim/LayoutManager;
    .param p2, "first"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/tonicartos/superslim/LayoutManager;->getPaddingStart()I

    move-result v1

    .line 34
    .local v1, "paddingStart":I
    invoke-virtual {p1}, Lcom/tonicartos/superslim/LayoutManager;->getPaddingEnd()I

    move-result v0

    .line 36
    .local v0, "paddingEnd":I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iput-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 38
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget-boolean v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    if-eqz v2, :cond_6

    .line 39
    invoke-virtual {p1, p2}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->headerWidth:I

    .line 40
    invoke-virtual {p1, p2}, Lcom/tonicartos/superslim/LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    .line 42
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeaderInline()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeaderOverlay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    iget v2, p0, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget-boolean v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerStartMarginIsAuto:Z

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeaderStartAligned()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeaderOverlay()Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    iget v2, p0, Lcom/tonicartos/superslim/SectionData;->headerWidth:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    .line 57
    :goto_1
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget-boolean v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerEndMarginIsAuto:Z

    if-eqz v2, :cond_5

    .line 58
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeaderEndAligned()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeaderOverlay()Z

    move-result v2

    if-nez v2, :cond_4

    .line 59
    iget v2, p0, Lcom/tonicartos/superslim/SectionData;->headerWidth:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    .line 74
    :goto_2
    iget v2, p0, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->contentEnd:I

    .line 75
    iget v2, p0, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->contentStart:I

    .line 77
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget-boolean v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    iput-boolean v2, p0, Lcom/tonicartos/superslim/SectionData;->hasHeader:Z

    .line 79
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->getTestedFirstPosition()I

    move-result v2

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->firstPosition:I

    .line 81
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget-object v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    iput-object v2, p0, Lcom/tonicartos/superslim/SectionData;->sectionManager:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->sectionManagerKind:I

    .line 83
    return-void

    .line 45
    :cond_1
    iput v3, p0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    goto :goto_0

    .line 52
    :cond_2
    iput v3, p0, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    goto :goto_1

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginStart:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    goto :goto_1

    .line 61
    :cond_4
    iput v3, p0, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    goto :goto_2

    .line 64
    :cond_5
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginEnd:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    goto :goto_2

    .line 67
    :cond_6
    iput v3, p0, Lcom/tonicartos/superslim/SectionData;->minimumHeight:I

    .line 68
    iput v3, p0, Lcom/tonicartos/superslim/SectionData;->headerHeight:I

    .line 69
    iput v3, p0, Lcom/tonicartos/superslim/SectionData;->headerWidth:I

    .line 70
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginStart:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    .line 71
    iget-object v2, p0, Lcom/tonicartos/superslim/SectionData;->headerParams:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    iget v2, v2, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginEnd:I

    iput v2, p0, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    goto :goto_2
.end method


# virtual methods
.method public getTotalMarginWidth()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/tonicartos/superslim/SectionData;->marginEnd:I

    iget v1, p0, Lcom/tonicartos/superslim/SectionData;->marginStart:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sameSectionManager(Lcom/tonicartos/superslim/LayoutManager$LayoutParams;)Z
    .locals 2
    .param p1, "params"    # Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .prologue
    .line 90
    iget v0, p1, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    iget v1, p0, Lcom/tonicartos/superslim/SectionData;->sectionManagerKind:I

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    iget-object v1, p0, Lcom/tonicartos/superslim/SectionData;->sectionManager:Ljava/lang/String;

    .line 91
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
