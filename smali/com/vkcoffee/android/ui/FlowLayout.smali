.class public Lcom/vkcoffee/android/ui/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lineHeights:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lparams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private measuredHeight:I

.field public pwidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/vkcoffee/android/ui/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/ui/FlowLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    .line 23
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->pwidth:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->measuredHeight:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    .line 23
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->pwidth:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->measuredHeight:I

    .line 55
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 268
    instance-of v0, p1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 263
    new-instance v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getFullHeight()I
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "h":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    .local v1, "i":I
    add-int/2addr v0, v1

    .line 168
    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public layoutWithParams(Ljava/util/List;II)Ljava/util/List;
    .locals 24
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/FlowLayout;->lparams:Ljava/util/List;

    .line 60
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 62
    .local v8, "count":I
    move/from16 v18, p2

    .line 63
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 64
    .local v19, "xpos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingTop()I

    move-result v20

    .line 65
    .local v20, "ypos":I
    const/4 v12, 0x0

    .line 68
    .local v12, "line":I
    const/4 v5, 0x0

    .line 69
    .local v5, "breakNext":Z
    const/16 v16, 0x0

    .line 70
    .local v16, "prevFloat":Z
    const/4 v9, 0x0

    .line 72
    .local v9, "floatY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->clear()V

    .line 74
    const/4 v10, 0x0

    .line 75
    .local v10, "floatingH":I
    const/4 v13, 0x0

    .line 76
    .local v13, "line_height":I
    const/4 v15, 0x0

    .line 78
    .local v15, "maxw":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_5

    .line 79
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    .line 80
    .local v14, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v21, v0

    if-gtz v21, :cond_0

    move/from16 v7, p2

    .line 81
    .local v7, "childw":I
    :goto_1
    iget v6, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 82
    .local v6, "childh":I
    if-gez v6, :cond_1

    .line 83
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "Height should be constant"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 80
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    :cond_0
    iget v7, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    goto :goto_1

    .line 86
    .restart local v6    # "childh":I
    .restart local v7    # "childw":I
    :cond_1
    if-nez v5, :cond_2

    add-int v21, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->pwidth:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 87
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 88
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v21

    add-int v20, v20, v21

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v13, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v5, 0x0

    .line 94
    :cond_3
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 97
    iget-boolean v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 98
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    add-int v20, v20, v21

    .line 99
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    add-int v10, v10, v21

    .line 100
    add-int v21, v19, v7

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 105
    :goto_2
    iget-boolean v5, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 106
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v21, v0

    sub-int v21, v19, v21

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 78
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 102
    :cond_4
    const/4 v10, 0x0

    .line 103
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v7

    add-int v19, v19, v21

    goto :goto_2

    .line 108
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    .end local v14    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_5
    if-lez v13, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingTop()I

    move-result v20

    .line 114
    const/4 v9, 0x0

    .line 115
    const/16 v16, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v12, 0x0

    .line 119
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_f

    .line 122
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    .line 123
    .restart local v14    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v21, v0

    if-gtz v21, :cond_7

    move/from16 v7, v18

    .line 124
    .restart local v7    # "childw":I
    :goto_4
    iget v6, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 125
    .restart local v6    # "childh":I
    if-gez v6, :cond_8

    .line 126
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "Height should be constant"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 123
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    :cond_7
    iget v7, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    goto :goto_4

    .line 129
    .restart local v6    # "childh":I
    .restart local v7    # "childw":I
    :cond_8
    iget-boolean v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    if-eqz v16, :cond_9

    .line 130
    move/from16 v20, v9

    .line 132
    :cond_9
    if-nez v5, :cond_a

    add-int v21, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->pwidth:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 133
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v20, v20, v21

    .line 135
    add-int/lit8 v12, v12, 0x1

    .line 136
    const/4 v5, 0x0

    .line 139
    :cond_b
    iget-boolean v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->center:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    div-int/lit8 v22, v7, 0x2

    sub-int v19, v21, v22

    .line 143
    :cond_c
    const-string/jumbo v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v21, Landroid/graphics/Rect;

    add-int v22, v19, v7

    add-int v23, v20, v6

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 147
    if-nez v16, :cond_d

    .line 148
    move/from16 v9, v20

    .line 149
    const/16 v16, 0x1

    .line 151
    :cond_d
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    add-int v20, v20, v21

    .line 156
    :goto_5
    iget-boolean v5, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 119
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 153
    :cond_e
    const/16 v16, 0x0

    .line 154
    iget v0, v14, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v7

    add-int v19, v19, v21

    goto :goto_5

    .line 160
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    .end local v14    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getFullHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/FlowLayout;->measuredHeight:I

    .line 161
    return-object v17
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildCount()I

    move-result v4

    .line 277
    .local v4, "count":I
    sub-int v10, p4, p2

    .line 278
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v11

    .line 279
    .local v11, "xpos":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingTop()I

    move-result v12

    .line 280
    .local v12, "ypos":I
    const/4 v7, 0x0

    .line 283
    .local v7, "line":I
    const/4 v0, 0x0

    .line 284
    .local v0, "breakNext":Z
    const/4 v9, 0x0

    .line 285
    .local v9, "prevFloat":Z
    const/4 v5, 0x0

    .line 287
    .local v5, "floatY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_9

    .line 288
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_5

    .line 290
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    .line 291
    .local v8, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    if-gtz v13, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 292
    .local v3, "childw":I
    :goto_1
    iget v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    if-gtz v13, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 294
    .local v2, "childh":I
    :goto_2
    iget-boolean v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    if-nez v13, :cond_0

    if-eqz v9, :cond_0

    .line 295
    move v12, v5

    .line 297
    :cond_0
    if-nez v0, :cond_1

    add-int v13, v11, v3

    iget v14, p0, Lcom/vkcoffee/android/ui/FlowLayout;->pwidth:I

    add-int/2addr v14, v10

    if-le v13, v14, :cond_2

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v11

    .line 299
    iget-object v13, p0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v12, v13

    .line 300
    add-int/lit8 v7, v7, 0x1

    .line 301
    const/4 v0, 0x0

    .line 304
    :cond_2
    iget-boolean v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->center:Z

    if-eqz v13, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v3, 0x2

    sub-int v11, v13, v14

    .line 309
    :cond_3
    add-int v13, v11, v3

    add-int v14, v12, v2

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 310
    iget-boolean v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    if-eqz v13, :cond_8

    .line 311
    if-nez v9, :cond_4

    .line 312
    move v5, v12

    .line 313
    const/4 v9, 0x1

    .line 315
    :cond_4
    iget v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    add-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 320
    :goto_3
    iget-boolean v0, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 287
    .end local v2    # "childh":I
    .end local v3    # "childw":I
    .end local v8    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .restart local v8    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_6
    iget v3, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    goto :goto_1

    .line 292
    .restart local v3    # "childw":I
    :cond_7
    iget v2, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    goto :goto_2

    .line 317
    .restart local v2    # "childh":I
    :cond_8
    const/4 v9, 0x0

    .line 318
    iget v13, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v13, v3

    add-int/2addr v11, v13

    goto :goto_3

    .line 324
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childh":I
    .end local v3    # "childw":I
    .end local v8    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    sget-boolean v18, Lcom/vkcoffee/android/ui/FlowLayout;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 180
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingRight()I

    move-result v19

    sub-int v15, v18, v19

    .line 181
    .local v15, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingTop()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingBottom()I

    move-result v19

    sub-int v10, v18, v19

    .line 182
    .local v10, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildCount()I

    move-result v7

    .line 183
    .local v7, "count":I
    const/4 v12, 0x0

    .line 185
    .local v12, "line_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v16

    .line 186
    .local v16, "xpos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingTop()I

    move-result v17

    .line 187
    .local v17, "ypos":I
    const/4 v14, 0x0

    .line 190
    .local v14, "maxw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/high16 v19, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 191
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 196
    .local v4, "childHeightMeasureSpec":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "breakNext":Z
    const/4 v8, 0x0

    .line 201
    .local v8, "floatingH":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lparams:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lparams:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    :goto_2
    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_11

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 203
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    :cond_1
    if-nez v3, :cond_6

    .line 204
    :cond_2
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    move-object/from16 v13, v18

    .line 205
    .local v13, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :goto_3
    if-eqz v3, :cond_a

    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 206
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    .line 210
    :cond_3
    :goto_4
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    if-gtz v18, :cond_d

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 211
    .local v6, "childw":I
    :goto_5
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    move/from16 v18, v0

    if-gtz v18, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 213
    .local v5, "childh":I
    :goto_6
    if-nez v2, :cond_4

    add-int v18, v16, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->pwidth:I

    move/from16 v19, v0

    add-int v19, v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 214
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v16

    .line 215
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v17, v17, v18

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v12, 0x0

    .line 218
    const/4 v8, 0x0

    .line 219
    const/4 v2, 0x0

    .line 221
    :cond_5
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 224
    iget-boolean v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 225
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v5

    add-int v17, v17, v18

    .line 226
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v5

    add-int v8, v8, v18

    .line 227
    add-int v18, v16, v6

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 232
    :goto_7
    iget-boolean v2, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 233
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 201
    .end local v5    # "childh":I
    .end local v6    # "childw":I
    .end local v13    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 193
    .end local v2    # "breakNext":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeightMeasureSpec":I
    .end local v8    # "floatingH":I
    .end local v11    # "i":I
    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childHeightMeasureSpec":I
    goto/16 :goto_0

    .line 201
    .restart local v2    # "breakNext":Z
    .restart local v8    # "floatingH":I
    .restart local v11    # "i":I
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 204
    .restart local v3    # "child":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lparams:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    move-object/from16 v13, v18

    goto/16 :goto_3

    .line 207
    .restart local v13    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_a
    if-eqz v3, :cond_3

    .line 208
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    if-gtz v18, :cond_b

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    :goto_8
    move/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    :cond_b
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    goto :goto_8

    :cond_c
    move v6, v15

    .line 210
    goto/16 :goto_5

    :cond_d
    iget v6, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    goto/16 :goto_5

    .line 211
    .restart local v6    # "childw":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_f
    iget v5, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    goto/16 :goto_6

    .line 229
    .restart local v5    # "childh":I
    :cond_10
    const/4 v8, 0x0

    .line 230
    iget v0, v13, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v6

    add-int v16, v16, v18

    goto :goto_7

    .line 239
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childh":I
    .end local v6    # "childw":I
    .end local v13    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-nez v18, :cond_12

    .line 240
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 242
    .local v9, "h":I
    add-int/2addr v10, v9

    .line 243
    goto :goto_9

    .line 245
    .end local v9    # "h":I
    :cond_12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/high16 v19, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 246
    add-int v18, v17, v12

    move/from16 v0, v18

    if-ge v0, v10, :cond_13

    .line 247
    move v10, v12

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 249
    .restart local v9    # "h":I
    add-int/2addr v10, v9

    .line 250
    goto :goto_a

    .line 254
    .end local v9    # "h":I
    :cond_13
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/vkcoffee/android/ui/FlowLayout;->setMeasuredDimension(II)V

    .line 259
    :goto_b
    return-void

    .line 257
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/vkcoffee/android/ui/FlowLayout;->setMeasuredDimension(II)V

    goto :goto_b
.end method

.method public resetParams()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FlowLayout;->lparams:Ljava/util/List;

    .line 174
    return-void
.end method
