.class public Lcom/vkcoffee/android/ZhukovLayout;
.super Ljava/lang/Object;
.source "ZhukovLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMultiThumbsHeight(Ljava/util/List;FF)F
    .locals 2
    .param p1, "width"    # F
    .param p2, "margin"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v0, p1, v0

    invoke-static {p0}, Lcom/vkcoffee/android/ZhukovLayout;->sum(Ljava/util/List;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static oi(C)I
    .locals 1
    .param p0, "o"    # C

    .prologue
    const/4 v0, 0x0

    .line 238
    sparse-switch p0, :sswitch_data_0

    .line 246
    :goto_0
    :sswitch_0
    return v0

    .line 242
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x71 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static processThumbs(IILjava/util/List;)V
    .locals 68
    .param p0, "maxW"    # I
    .param p1, "maxH"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v53, "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/ThumbAttachment;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :cond_0
    :goto_0
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_1

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 23
    .local v6, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v62, v0

    if-eqz v62, :cond_0

    .line 24
    check-cast v6, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .end local v6    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v61

    if-nez v61, :cond_3

    .line 235
    :cond_2
    :goto_1
    return-void

    .line 31
    :cond_3
    const-string/jumbo v42, ""

    .line 32
    .local v42, "orients":Ljava/lang/String;
    const/16 v61, 0x3

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v43, v0

    .line 33
    .local v43, "orients_cnt":[I
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v45, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 35
    .local v11, "cnt":I
    const/4 v8, 0x0

    .line 37
    .local v8, "bad":Z
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :goto_2
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_7

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .line 38
    .local v51, "thumb":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    invoke-interface/range {v51 .. v51}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->getRatio()F

    move-result v44

    .line 39
    .local v44, "ratio":F
    const/high16 v62, -0x40800000    # -1.0f

    cmpl-float v62, v44, v62

    if-nez v62, :cond_4

    .line 40
    const/4 v8, 0x1

    .line 42
    :cond_4
    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3ff3333333333333L    # 1.2

    cmpl-double v62, v62, v64

    if-lez v62, :cond_5

    const/16 v41, 0x77

    .line 43
    .local v41, "orient":C
    :goto_3
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 44
    invoke-static/range {v41 .. v41}, Lcom/vkcoffee/android/ZhukovLayout;->oi(C)I

    move-result v62

    aget v63, v43, v62

    add-int/lit8 v63, v63, 0x1

    aput v63, v43, v62

    .line 45
    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v62

    move-object/from16 v0, v45

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42
    .end local v41    # "orient":C
    :cond_5
    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3fe999999999999aL    # 0.8

    cmpg-double v62, v62, v64

    if-gez v62, :cond_6

    const/16 v41, 0x6e

    goto :goto_3

    :cond_6
    const/16 v41, 0x71

    goto :goto_3

    .line 47
    .end local v44    # "ratio":F
    .end local v51    # "thumb":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    :cond_7
    if-eqz v8, :cond_8

    .line 48
    const-string/jumbo v61, "vk"

    const-string/jumbo v62, "BAD!"

    invoke-static/range {v61 .. v62}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :goto_4
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_2

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .line 50
    .local v49, "t":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    const/high16 v62, 0x43070000    # 135.0f

    invoke-static/range {v62 .. v62}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    const/high16 v63, 0x42c80000    # 100.0f

    invoke-static/range {v63 .. v63}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v63

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v64

    move/from16 v4, v65

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto :goto_4

    .line 55
    .end local v49    # "t":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    :cond_8
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v61

    if-nez v61, :cond_9

    invoke-static/range {v45 .. v45}, Lcom/vkcoffee/android/ZhukovLayout;->sum(Ljava/util/List;)F

    move-result v61

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    div-float v7, v61, v62

    .line 57
    .local v7, "avg_ratio":F
    :goto_5
    const/high16 v61, 0x40000000    # 2.0f

    invoke-static/range {v61 .. v61}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v33, v0

    .local v33, "margin_w":F
    const/high16 v61, 0x40000000    # 2.0f

    invoke-static/range {v61 .. v61}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v32, v0

    .line 58
    .local v32, "margin_h":F
    if-lez p0, :cond_a

    .line 59
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 v36, v0

    .line 60
    .local v36, "max_w":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v34, v0

    .line 66
    .local v34, "max_h":F
    :goto_6
    div-float v35, v36, v34

    .line 68
    .local v35, "max_ratio":F
    const/16 v61, 0x1

    move/from16 v0, v61

    if-ne v11, v0, :cond_c

    .line 69
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x78

    invoke-interface/range {v61 .. v62}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->getWidth(C)I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    invoke-static/range {v61 .. v61}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v36

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v36

    .line 70
    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide/high16 v64, 0x3fe0000000000000L    # 0.5

    cmpl-double v61, v62, v64

    if-lez v61, :cond_b

    .line 71
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Float;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Float;->floatValue()F

    move-result v62

    div-float v62, v36, v62

    const/16 v63, 0x1

    const/16 v64, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v36

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 55
    .end local v7    # "avg_ratio":F
    .end local v32    # "margin_h":F
    .end local v33    # "margin_w":F
    .end local v34    # "max_h":F
    .end local v35    # "max_ratio":F
    .end local v36    # "max_w":F
    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 62
    .restart local v7    # "avg_ratio":F
    .restart local v32    # "margin_h":F
    .restart local v33    # "margin_w":F
    :cond_a
    const/high16 v36, 0x43a00000    # 320.0f

    .line 63
    .restart local v36    # "max_w":F
    const/high16 v34, 0x43520000    # 210.0f

    .restart local v34    # "max_h":F
    goto/16 :goto_6

    .line 73
    .restart local v35    # "max_ratio":F
    :cond_b
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/high16 v62, 0x40000000    # 2.0f

    mul-float v62, v62, v36

    const/16 v63, 0x1

    const/16 v64, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v36

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 75
    :cond_c
    const/16 v61, 0x2

    move/from16 v0, v61

    if-ne v11, v0, :cond_10

    .line 76
    const-string/jumbo v61, "ww"

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_d

    float-to-double v0, v7

    move-wide/from16 v62, v0

    const-wide v64, 0x3ff6666666666666L    # 1.4

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v66, v0

    mul-double v64, v64, v66

    cmpl-double v61, v62, v64

    if-lez v61, :cond_d

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v62

    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    sub-float v61, v62, v61

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3fc999999999999aL    # 0.2

    cmpg-double v61, v62, v64

    if-gez v61, :cond_d

    .line 77
    move/from16 v56, v36

    .line 78
    .local v56, "w":F
    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v62, v56, v61

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v56, v61

    sub-float v63, v34, v32

    const/high16 v64, 0x40000000    # 2.0f

    div-float v63, v63, v64

    move/from16 v0, v61

    move/from16 v1, v63

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v62

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 79
    .local v17, "h":F
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x1

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 80
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 81
    .end local v17    # "h":F
    .end local v56    # "w":F
    :cond_d
    const-string/jumbo v61, "ww"

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_e

    const-string/jumbo v61, "qq"

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_f

    .line 82
    :cond_e
    sub-float v61, v36, v33

    const/high16 v62, 0x40000000    # 2.0f

    div-float v56, v61, v62

    .line 83
    .restart local v56    # "w":F
    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v62, v56, v61

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v56, v61

    move/from16 v0, v61

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v62

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 84
    .restart local v17    # "h":F
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 85
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 87
    .end local v17    # "h":F
    .end local v56    # "w":F
    :cond_f
    sub-float v62, v36, v33

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v62, v62, v61

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v63, v63, v61

    const/high16 v64, 0x3f800000    # 1.0f

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v64, v61

    add-float v61, v61, v63

    div-float v57, v62, v61

    .line 88
    .local v57, "w0":F
    sub-float v61, v36, v57

    sub-float v58, v61, v33

    .line 89
    .local v58, "w1":F
    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v62, v57, v61

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v58, v61

    move/from16 v0, v62

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v34

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 90
    .restart local v17    # "h":F
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v57

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 91
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v58

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 93
    .end local v17    # "h":F
    .end local v57    # "w0":F
    .end local v58    # "w1":F
    :cond_10
    const/16 v61, 0x3

    move/from16 v0, v61

    if-ne v11, v0, :cond_12

    .line 94
    const-string/jumbo v61, "www"

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_11

    .line 95
    move/from16 v56, v36

    .line 96
    .restart local v56    # "w":F
    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v56, v61

    sub-float v62, v34, v32

    const v63, 0x3f28f5c3    # 0.66f

    mul-float v62, v62, v63

    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 97
    .local v21, "h_cover":F
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x1

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v21

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 99
    sub-float v61, v36, v33

    const/high16 v62, 0x40000000    # 2.0f

    div-float v56, v61, v62

    .line 100
    sub-float v61, v34, v21

    sub-float v62, v61, v32

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v63, v56, v61

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v56, v61

    move/from16 v0, v63

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v62

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 101
    .restart local v17    # "h":F
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 102
    const/16 v61, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v17

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 104
    .end local v17    # "h":F
    .end local v21    # "h_cover":F
    .end local v56    # "w":F
    :cond_11
    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v17, v0

    .line 105
    .local v17, "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v62, v0

    sub-float v61, v36, v33

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide/high16 v66, 0x3fe8000000000000L    # 0.75

    mul-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->min(DD)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-int v0, v0

    move/from16 v60, v0

    .line 106
    .local v60, "w_cover":I
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 108
    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    sub-float v62, v34, v32

    mul-float v62, v62, v61

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v63

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    add-float v61, v61, v63

    div-float v19, v62, v61

    .line 109
    .local v19, "h1":F
    sub-float v61, v34, v19

    sub-float v18, v61, v32

    .line 110
    .local v18, "h0":F
    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v61, v0

    sub-float v61, v36, v61

    sub-float v62, v61, v33

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v63, v19, v61

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v61, v61, v18

    move/from16 v0, v63

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v62

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v56

    .line 112
    .restart local v56    # "w":F
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x1

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v18

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 113
    const/16 v61, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    const/16 v62, 0x0

    const/16 v63, 0x1

    move-object/from16 v0, v61

    move/from16 v1, v56

    move/from16 v2, v19

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 115
    .end local v17    # "h":I
    .end local v18    # "h0":F
    .end local v19    # "h1":F
    .end local v56    # "w":F
    .end local v60    # "w_cover":I
    :cond_12
    const/16 v61, 0x4

    move/from16 v0, v61

    if-ne v11, v0, :cond_14

    .line 116
    const-string/jumbo v61, "wwww"

    move-object/from16 v0, v42

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_13

    .line 117
    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v56, v0

    .line 118
    .local v56, "w":I
    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v62, v61

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v62, v0

    sub-float v61, v34, v32

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3fe51eb851eb851fL    # 0.66

    mul-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->min(DD)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-int v0, v0

    move/from16 v21, v0

    .line 119
    .local v21, "h_cover":I
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x1

    const/16 v65, 0x0

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 121
    const/high16 v61, 0x40000000    # 2.0f

    mul-float v61, v61, v33

    sub-float v62, v36, v61

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v63

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    add-float v63, v63, v61

    const/16 v61, 0x3

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    add-float v61, v61, v63

    div-float v61, v62, v61

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v17, v0

    .line 122
    .restart local v17    # "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v57, v0

    .line 123
    .local v57, "w0":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v58, v0

    .line 124
    .local v58, "w1":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x3

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v59, v0

    .line 125
    .local v59, "w2":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v61, v0

    sub-float v61, v34, v61

    sub-float v61, v61, v32

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v17, v0

    .line 127
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 128
    const/16 v61, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v58

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 129
    const/16 v61, 0x3

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 131
    .end local v17    # "h":I
    .end local v21    # "h_cover":I
    .end local v56    # "w":I
    .end local v57    # "w0":I
    .end local v58    # "w1":I
    .end local v59    # "w2":I
    :cond_13
    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v17, v0

    .line 132
    .restart local v17    # "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    mul-float v61, v61, v62

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v62, v0

    sub-float v61, v36, v33

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3fe51eb851eb851fL    # 0.66

    mul-double v64, v64, v66

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->min(DD)D

    move-result-wide v62

    move-wide/from16 v0, v62

    double-to-int v0, v0

    move/from16 v60, v0

    .line 133
    .restart local v60    # "w_cover":I
    const/16 v61, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x0

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 135
    const/high16 v61, 0x40000000    # 2.0f

    mul-float v61, v61, v32

    sub-float v62, v34, v61

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v63, v63, v61

    const/high16 v64, 0x3f800000    # 1.0f

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v64, v61

    add-float v63, v63, v61

    const/high16 v64, 0x3f800000    # 1.0f

    const/16 v61, 0x3

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v64, v61

    add-float v61, v61, v63

    div-float v61, v62, v61

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v56, v0

    .line 136
    .restart local v56    # "w":I
    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v62, v61

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v18, v0

    .line 137
    .local v18, "h0":I
    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x2

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v62, v61

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v19, v0

    .line 138
    .local v19, "h1":I
    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v61, 0x3

    move-object/from16 v0, v45

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v62, v61

    add-float v61, v61, v32

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v20, v0

    .line 139
    .local v20, "h2":I
    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v61, v0

    sub-float v61, v36, v61

    sub-float v61, v61, v33

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->min(FF)F

    move-result v61

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v56, v0

    .line 141
    const/16 v61, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x1

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 142
    const/16 v61, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x1

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 143
    const/16 v61, 0x3

    move-object/from16 v0, v53

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v63, v0

    const/16 v64, 0x0

    const/16 v65, 0x1

    invoke-interface/range {v61 .. v65}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 146
    .end local v17    # "h":I
    .end local v18    # "h0":I
    .end local v19    # "h1":I
    .end local v20    # "h2":I
    .end local v56    # "w":I
    .end local v60    # "w_cover":I
    :cond_14
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v46, "ratios_cropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    float-to-double v0, v7

    move-wide/from16 v62, v0

    const-wide v64, 0x3ff199999999999aL    # 1.1

    cmpl-double v61, v62, v64

    if-lez v61, :cond_15

    .line 148
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :goto_7
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_16

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v44

    .line 149
    .restart local v44    # "ratio":F
    const/high16 v61, 0x3f800000    # 1.0f

    move/from16 v0, v61

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v61

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 152
    .end local v44    # "ratio":F
    :cond_15
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :goto_8
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_16

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v44

    .line 153
    .restart local v44    # "ratio":F
    const/high16 v61, 0x3f800000    # 1.0f

    move/from16 v0, v61

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v61

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 157
    .end local v44    # "ratio":F
    :cond_16
    new-instance v55, Ljava/util/HashMap;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v55, "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    .local v16, "first_line":I
    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string/jumbo v62, ""

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [F

    move-object/from16 v62, v0

    const/16 v63, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v64

    aput v64, v62, v63

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v16, 0x1

    :goto_9
    add-int/lit8 v61, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v61

    if-gt v0, v1, :cond_17

    .line 165
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string/jumbo v62, ","

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sub-int v48, v11, v16

    .local v48, "second_line":I
    move-object/from16 v0, v61

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    const/16 v62, 0x2

    move/from16 v0, v62

    new-array v0, v0, [F

    move-object/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    .line 166
    move-object/from16 v0, v46

    move/from16 v1, v64

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v64

    aput v64, v62, v63

    const/16 v63, 0x1

    .line 167
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v64

    move-object/from16 v0, v46

    move/from16 v1, v16

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v64

    aput v64, v62, v63

    .line 165
    move-object/from16 v0, v55

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 173
    .end local v48    # "second_line":I
    :cond_17
    const/16 v16, 0x1

    :goto_a
    add-int/lit8 v61, v11, -0x2

    move/from16 v0, v16

    move/from16 v1, v61

    if-gt v0, v1, :cond_19

    .line 174
    const/16 v48, 0x1

    .restart local v48    # "second_line":I
    :goto_b
    sub-int v61, v11, v16

    add-int/lit8 v61, v61, -0x1

    move/from16 v0, v48

    move/from16 v1, v61

    if-gt v0, v1, :cond_18

    .line 175
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string/jumbo v62, ","

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string/jumbo v62, ","

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sub-int v62, v11, v16

    sub-int v50, v62, v48

    .local v50, "third_line":I
    move-object/from16 v0, v61

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    const/16 v62, 0x3

    move/from16 v0, v62

    new-array v0, v0, [F

    move-object/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    .line 176
    move-object/from16 v0, v46

    move/from16 v1, v64

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v64

    aput v64, v62, v63

    const/16 v63, 0x1

    add-int v64, v16, v48

    .line 177
    move-object/from16 v0, v46

    move/from16 v1, v16

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v64

    aput v64, v62, v63

    const/16 v63, 0x2

    add-int v64, v16, v48

    .line 178
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v65

    move-object/from16 v0, v46

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v64

    aput v64, v62, v63

    .line 175
    move-object/from16 v0, v55

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_b

    .line 173
    .end local v50    # "third_line":I
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    .line 185
    .end local v48    # "second_line":I
    :cond_19
    const/16 v37, 0x0

    .line 186
    .local v37, "opt_conf":Ljava/lang/String;
    const/16 v38, 0x0

    .line 187
    .local v38, "opt_diff":F
    const/16 v39, 0x0

    .line 189
    .local v39, "opt_height":F
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    .line 190
    .local v26, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :cond_1a
    :goto_c
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_1f

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 191
    .local v12, "conf":Ljava/lang/String;
    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [F

    .line 192
    .local v22, "heights":[F
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v61, v0

    add-int/lit8 v61, v61, -0x1

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    mul-float v14, v32, v61

    .line 193
    .local v14, "conf_h":F
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v63, v0

    const/16 v61, 0x0

    :goto_d
    move/from16 v0, v61

    move/from16 v1, v63

    if-ge v0, v1, :cond_1b

    aget v17, v22, v61

    .line 194
    .local v17, "h":F
    add-float v14, v14, v17

    .line 193
    add-int/lit8 v61, v61, 0x1

    goto :goto_d

    .line 196
    .end local v17    # "h":F
    :cond_1b
    sub-float v61, v14, v34

    invoke-static/range {v61 .. v61}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 197
    .local v13, "conf_diff":F
    const/16 v61, 0x2c

    move/from16 v0, v61

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v61

    const/16 v63, -0x1

    move/from16 v0, v61

    move/from16 v1, v63

    if-eq v0, v1, :cond_1d

    .line 198
    const-string/jumbo v61, ","

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 199
    .local v15, "conf_nums":[Ljava/lang/String;
    const/16 v61, 0x0

    aget-object v61, v15, v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    const/16 v63, 0x1

    aget-object v63, v15, v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v61

    move/from16 v1, v63

    if-gt v0, v1, :cond_1c

    array-length v0, v15

    move/from16 v61, v0

    const/16 v63, 0x2

    move/from16 v0, v61

    move/from16 v1, v63

    if-le v0, v1, :cond_1d

    const/16 v61, 0x1

    aget-object v61, v15, v61

    .line 200
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    const/16 v63, 0x2

    aget-object v63, v15, v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    move/from16 v0, v61

    move/from16 v1, v63

    if-le v0, v1, :cond_1d

    .line 201
    :cond_1c
    float-to-double v0, v13

    move-wide/from16 v64, v0

    const-wide v66, 0x3ff199999999999aL    # 1.1

    mul-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-float v13, v0

    .line 204
    .end local v15    # "conf_nums":[Ljava/lang/String;
    :cond_1d
    if-eqz v37, :cond_1e

    cmpg-float v61, v13, v38

    if-gez v61, :cond_1a

    .line 205
    :cond_1e
    move-object/from16 v37, v12

    .line 206
    move/from16 v38, v13

    .line 207
    goto/16 :goto_c

    .line 211
    .end local v12    # "conf":Ljava/lang/String;
    .end local v13    # "conf_diff":F
    .end local v14    # "conf_h":F
    .end local v22    # "heights":[F
    :cond_1f
    const/4 v9, 0x0

    .line 213
    .local v9, "breakNext":Z
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/ArrayList;

    .line 214
    .local v54, "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/ThumbAttachment;>;"
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/ArrayList;

    .line 215
    .local v47, "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const-string/jumbo v61, ","

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, "chunks":[Ljava/lang/String;
    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, [F

    .line 217
    .local v40, "opt_heights":[F
    array-length v0, v10

    move/from16 v61, v0

    add-int/lit8 v28, v61, -0x1

    .line 218
    .local v28, "last_row":I
    const/16 v25, 0x0

    .line 219
    .local v25, "k":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_e
    array-length v0, v10

    move/from16 v61, v0

    move/from16 v0, v23

    move/from16 v1, v61

    if-ge v0, v1, :cond_2

    .line 220
    aget-object v61, v10, v23

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 221
    .local v29, "line_chunks_num":I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v31, "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/ThumbAttachment;>;"
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_f
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_20

    .line 223
    const/16 v61, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v61

    move-object/from16 v0, v31

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v24, v24, 0x1

    goto :goto_f

    .line 225
    :cond_20
    aget v30, v40, v25

    .line 226
    .local v30, "line_height":F
    add-int/lit8 v25, v25, 0x1

    .line 227
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v61

    add-int/lit8 v27, v61, -0x1

    .line 228
    .local v27, "last_column":I
    const/16 v24, 0x0

    :goto_10
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v24

    move/from16 v1, v61

    if-ge v0, v1, :cond_22

    .line 229
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .line 230
    .restart local v51    # "thumb":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    const/16 v61, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v52

    .line 231
    .local v52, "thumb_ratio":F
    mul-float v61, v52, v30

    move/from16 v0, v61

    float-to-int v0, v0

    move/from16 v61, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v61, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    const/16 v61, 0x1

    :goto_11
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v62

    move/from16 v2, v63

    move/from16 v3, v61

    move/from16 v4, v64

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/attachments/ThumbAttachment;->setViewSize(FFZZ)V

    .line 228
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 231
    :cond_21
    const/16 v61, 0x0

    goto :goto_11

    .line 219
    .end local v51    # "thumb":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    .end local v52    # "thumb_ratio":F
    :cond_22
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_e
.end method

.method private static sum(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, "sum":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 252
    .local v0, "f":F
    add-float/2addr v1, v0

    .line 253
    goto :goto_0

    .line 254
    .end local v0    # "f":F
    :cond_0
    return v1
.end method
