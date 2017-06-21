.class public Lme/grishka/appkit/imageloader/StackBlur;
.super Ljava/lang/Object;
.source "StackBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    }
.end annotation


# static fields
.field private static final mul_table:[I

.field private static final shg_table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 7
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/grishka/appkit/imageloader/StackBlur;->mul_table:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lme/grishka/appkit/imageloader/StackBlur;->shg_table:[I

    return-void

    .line 7
    nop

    :array_0
    .array-data 4
        0x200
        0x200
        0x1c8
        0x200
        0x148
        0x1c8
        0x14f
        0x200
        0x195
        0x148
        0x10f
        0x1c8
        0x184
        0x14f
        0x124
        0x200
        0x1c6
        0x195
        0x16c
        0x148
        0x12a
        0x10f
        0x1f0
        0x1c8
        0x1a4
        0x184
        0x168
        0x14f
        0x138
        0x124
        0x111
        0x200
        0x1e2
        0x1c6
        0x1ac
        0x195
        0x17f
        0x16c
        0x159
        0x148
        0x138
        0x12a
        0x11c
        0x10f
        0x103
        0x1f0
        0x1db
        0x1c8
        0x1b5
        0x1a4
        0x194
        0x184
        0x176
        0x168
        0x15b
        0x14f
        0x143
        0x138
        0x12e
        0x124
        0x11a
        0x111
        0x109
        0x200
        0x1f1
        0x1e2
        0x1d4
        0x1c6
        0x1b9
        0x1ac
        0x1a1
        0x195
        0x18a
        0x17f
        0x175
        0x16c
        0x162
        0x159
        0x151
        0x148
        0x140
        0x138
        0x131
        0x12a
        0x123
        0x11c
        0x116
        0x10f
        0x109
        0x103
        0x1fb
        0x1f0
        0x1e5
        0x1db
        0x1d1
        0x1c8
        0x1be
        0x1b5
        0x1ac
        0x1a4
        0x19c
        0x194
        0x18c
        0x184
        0x17d
        0x176
        0x16f
        0x168
        0x162
        0x15b
        0x155
        0x14f
        0x149
        0x143
        0x13e
        0x138
        0x133
        0x12e
        0x129
        0x124
        0x11f
        0x11a
        0x116
        0x111
        0x10d
        0x109
        0x105
        0x200
        0x1f9
        0x1f1
        0x1e9
        0x1e2
        0x1db
        0x1d4
        0x1cd
        0x1c6
        0x1bf
        0x1b9
        0x1b3
        0x1ac
        0x1a6
        0x1a1
        0x19b
        0x195
        0x18f
        0x18a
        0x185
        0x17f
        0x17a
        0x175
        0x170
        0x16c
        0x167
        0x162
        0x15e
        0x159
        0x155
        0x151
        0x14c
        0x148
        0x144
        0x140
        0x13c
        0x138
        0x135
        0x131
        0x12d
        0x12a
        0x126
        0x123
        0x11f
        0x11c
        0x119
        0x116
        0x112
        0x10f
        0x10c
        0x109
        0x106
        0x103
        0x101
        0x1fb
        0x1f5
        0x1f0
        0x1eb
        0x1e5
        0x1e0
        0x1db
        0x1d6
        0x1d1
        0x1cc
        0x1c8
        0x1c3
        0x1be
        0x1ba
        0x1b5
        0x1b1
        0x1ac
        0x1a8
        0x1a4
        0x1a0
        0x19c
        0x198
        0x194
        0x190
        0x18c
        0x188
        0x184
        0x181
        0x17d
        0x179
        0x176
        0x172
        0x16f
        0x16b
        0x168
        0x165
        0x162
        0x15e
        0x15b
        0x158
        0x155
        0x152
        0x14f
        0x14c
        0x149
        0x146
        0x143
        0x140
        0x13e
        0x13b
        0x138
        0x136
        0x133
        0x130
        0x12e
        0x12b
        0x129
        0x126
        0x124
        0x121
        0x11f
        0x11d
        0x11a
        0x118
        0x116
        0x113
        0x111
        0x10f
        0x10d
        0x10b
        0x109
        0x107
        0x105
        0x103
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x9
        0xb
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x11
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)V
    .locals 44
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 45
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Can\'t blur an immutable bitmap"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 50
    .local v3, "pixels":[I
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 58
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 60
    .local v9, "height":I
    add-int v2, p1, p1

    add-int/lit8 v13, v2, 0x1

    .line 61
    .local v13, "div":I
    shl-int/lit8 v37, v5, 0x2

    .line 62
    .local v37, "w4":I
    add-int/lit8 v38, v5, -0x1

    .line 63
    .local v38, "widthMinus1":I
    add-int/lit8 v17, v9, -0x1

    .line 64
    .local v17, "heightMinus1":I
    add-int/lit8 v27, p1, 0x1

    .line 65
    .local v27, "radiusPlus1":I
    add-int/lit8 v2, v27, 0x1

    mul-int v2, v2, v27

    div-int/lit8 v36, v2, 0x2

    .line 67
    .local v36, "sumFactor":I
    new-instance v35, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;-><init>(Lme/grishka/appkit/imageloader/StackBlur$1;)V

    .line 68
    .local v35, "stackStart":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    move-object/from16 v30, v35

    .line 69
    .local v30, "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    const/16 v32, 0x0

    .line 70
    .local v32, "stackEnd":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    const/16 v18, 0x1

    .local v18, "i":I
    move-object/from16 v31, v30

    .end local v30    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    .local v31, "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    :goto_1
    move/from16 v0, v18

    if-ge v0, v13, :cond_3

    .line 72
    new-instance v30, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;-><init>(Lme/grishka/appkit/imageloader/StackBlur$1;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    iput-object v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    .line 73
    .end local v31    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    .restart local v30    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v32, v30

    .line 70
    :cond_2
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v30

    .end local v30    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    .restart local v31    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    goto :goto_1

    .line 75
    :cond_3
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    iput-object v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    .line 76
    const/16 v33, 0x0

    .line 77
    .local v33, "stackIn":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    const/16 v34, 0x0

    .line 79
    .local v34, "stackOut":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    const/16 v41, 0x0

    .local v41, "yi":I
    move/from16 v43, v41

    .line 81
    .local v43, "yw":I
    sget-object v2, Lme/grishka/appkit/imageloader/StackBlur;->mul_table:[I

    aget v19, v2, p1

    .line 82
    .local v19, "mul_sum":I
    sget-object v2, Lme/grishka/appkit/imageloader/StackBlur;->shg_table:[I

    aget v29, v2, p1

    .line 84
    .local v29, "shg_sum":I
    const/16 v40, 0x0

    .local v40, "y":I
    move-object/from16 v30, v31

    .end local v31    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    .restart local v30    # "stack":Lme/grishka/appkit/imageloader/StackBlur$BlurStack;
    :goto_2
    move/from16 v0, v40

    if-ge v0, v9, :cond_9

    .line 86
    const/4 v12, 0x0

    .local v12, "b_sum":I
    move/from16 v16, v12

    .local v16, "g_sum":I
    move/from16 v26, v12

    .local v26, "r_sum":I
    move v10, v12

    .local v10, "b_in_sum":I
    move v14, v12

    .local v14, "g_in_sum":I
    move/from16 v24, v12

    .line 91
    .local v24, "r_in_sum":I
    aget v2, v3, v41

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .local v23, "pr":I
    mul-int v25, v27, v23

    .line 92
    .local v25, "r_out_sum":I
    aget v2, v3, v41

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .local v22, "pg":I
    mul-int v15, v27, v22

    .line 93
    .local v15, "g_out_sum":I
    aget v2, v3, v41

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .local v21, "pb":I
    mul-int v11, v27, v21

    .line 95
    .local v11, "b_out_sum":I
    mul-int v2, v36, v23

    add-int v26, v26, v2

    .line 96
    mul-int v2, v36, v22

    add-int v16, v16, v2

    .line 97
    mul-int v2, v36, v21

    add-int/2addr v12, v2

    .line 99
    move-object/from16 v30, v35

    .line 101
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 103
    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    .line 104
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    .line 105
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    .line 106
    move-object/from16 v0, v30

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 101
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 109
    :cond_4
    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 111
    move/from16 v0, v38

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    move/from16 v2, v38

    :goto_5
    add-int v20, v41, v2

    .line 115
    .local v20, "p":I
    aget v2, v3, v20

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    sub-int v28, v27, v18

    .local v28, "rbs":I
    mul-int v2, v23, v28

    add-int v26, v26, v2

    .line 116
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    mul-int v2, v22, v28

    add-int v16, v16, v2

    .line 117
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    mul-int v2, v21, v28

    add-int/2addr v12, v2

    .line 119
    add-int v24, v24, v23

    .line 120
    add-int v14, v14, v22

    .line 121
    add-int v10, v10, v21

    .line 123
    move-object/from16 v0, v30

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 109
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .end local v20    # "p":I
    .end local v28    # "rbs":I
    :cond_5
    move/from16 v2, v18

    .line 111
    goto :goto_5

    .line 127
    :cond_6
    move-object/from16 v33, v35

    .line 128
    move-object/from16 v34, v32

    .line 129
    const/16 v39, 0x0

    .local v39, "x":I
    :goto_6
    move/from16 v0, v39

    if-ge v0, v5, :cond_8

    .line 134
    mul-int v2, v26, v19

    shr-int v2, v2, v29

    mul-int v4, v16, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    mul-int v4, v12, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    aput v2, v3, v41

    .line 136
    sub-int v26, v26, v25

    .line 137
    sub-int v16, v16, v15

    .line 138
    sub-int/2addr v12, v11

    .line 140
    move-object/from16 v0, v33

    iget v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    sub-int v25, v25, v2

    .line 141
    move-object/from16 v0, v33

    iget v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    sub-int/2addr v15, v2

    .line 142
    move-object/from16 v0, v33

    iget v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    sub-int/2addr v11, v2

    .line 144
    add-int v2, v39, p1

    add-int/lit8 v20, v2, 0x1

    .restart local v20    # "p":I
    move/from16 v0, v20

    move/from16 v1, v38

    if-ge v0, v1, :cond_7

    .end local v20    # "p":I
    :goto_7
    add-int v20, v20, v43

    .line 149
    .restart local v20    # "p":I
    aget v2, v3, v20

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    add-int v24, v24, v2

    .line 150
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    add-int/2addr v14, v2

    .line 151
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    add-int/2addr v10, v2

    .line 153
    add-int v26, v26, v24

    .line 154
    add-int v16, v16, v14

    .line 155
    add-int/2addr v12, v10

    .line 157
    move-object/from16 v0, v33

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v33, v0

    .line 159
    move-object/from16 v0, v34

    iget v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    move/from16 v23, v0

    add-int v25, v25, v23

    .line 160
    move-object/from16 v0, v34

    iget v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 161
    move-object/from16 v0, v34

    iget v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    move/from16 v21, v0

    add-int v11, v11, v21

    .line 163
    sub-int v24, v24, v23

    .line 164
    sub-int v14, v14, v22

    .line 165
    sub-int v10, v10, v21

    .line 167
    move-object/from16 v0, v34

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v34, v0

    .line 170
    add-int/lit8 v41, v41, 0x1

    .line 129
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_6

    :cond_7
    move/from16 v20, v38

    .line 144
    goto :goto_7

    .line 172
    .end local v20    # "p":I
    :cond_8
    add-int v43, v43, v5

    .line 84
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 176
    .end local v10    # "b_in_sum":I
    .end local v11    # "b_out_sum":I
    .end local v12    # "b_sum":I
    .end local v14    # "g_in_sum":I
    .end local v15    # "g_out_sum":I
    .end local v16    # "g_sum":I
    .end local v21    # "pb":I
    .end local v22    # "pg":I
    .end local v23    # "pr":I
    .end local v24    # "r_in_sum":I
    .end local v25    # "r_out_sum":I
    .end local v26    # "r_sum":I
    .end local v39    # "x":I
    :cond_9
    const/16 v39, 0x0

    .restart local v39    # "x":I
    :goto_8
    move/from16 v0, v39

    if-ge v0, v5, :cond_f

    .line 178
    const/16 v26, 0x0

    .restart local v26    # "r_sum":I
    move/from16 v12, v26

    .restart local v12    # "b_sum":I
    move/from16 v16, v26

    .restart local v16    # "g_sum":I
    move/from16 v24, v26

    .restart local v24    # "r_in_sum":I
    move/from16 v10, v26

    .restart local v10    # "b_in_sum":I
    move/from16 v14, v26

    .line 180
    .restart local v14    # "g_in_sum":I
    move/from16 v41, v39

    .line 184
    aget v2, v3, v41

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .restart local v23    # "pr":I
    mul-int v25, v27, v23

    .line 185
    .restart local v25    # "r_out_sum":I
    aget v2, v3, v41

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .restart local v22    # "pg":I
    mul-int v15, v27, v22

    .line 186
    .restart local v15    # "g_out_sum":I
    aget v2, v3, v41

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .restart local v21    # "pb":I
    mul-int v11, v27, v21

    .line 188
    .restart local v11    # "b_out_sum":I
    mul-int v2, v36, v23

    add-int v26, v26, v2

    .line 189
    mul-int v2, v36, v22

    add-int v16, v16, v2

    .line 190
    mul-int v2, v36, v21

    add-int/2addr v12, v2

    .line 192
    move-object/from16 v30, v35

    .line 194
    const/16 v18, 0x0

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 196
    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    .line 197
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    .line 198
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    .line 199
    move-object/from16 v0, v30

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 194
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 202
    :cond_a
    move/from16 v42, v5

    .line 204
    .local v42, "yp":I
    const/16 v18, 0x1

    :goto_a
    move/from16 v0, v18

    move/from16 v1, p1

    if-gt v0, v1, :cond_c

    .line 206
    add-int v41, v42, v39

    .line 211
    aget v2, v3, v41

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    sub-int v28, v27, v18

    .restart local v28    # "rbs":I
    mul-int v2, v23, v28

    add-int v26, v26, v2

    .line 212
    aget v2, v3, v41

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    mul-int v2, v22, v28

    add-int v16, v16, v2

    .line 213
    aget v2, v3, v41

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    mul-int v2, v21, v28

    add-int/2addr v12, v2

    .line 215
    add-int v24, v24, v23

    .line 216
    add-int v14, v14, v22

    .line 217
    add-int v10, v10, v21

    .line 219
    move-object/from16 v0, v30

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 221
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 223
    add-int v42, v42, v5

    .line 204
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 227
    .end local v28    # "rbs":I
    :cond_c
    move/from16 v41, v39

    .line 228
    move-object/from16 v33, v35

    .line 229
    move-object/from16 v34, v32

    .line 230
    const/16 v40, 0x0

    :goto_b
    move/from16 v0, v40

    if-ge v0, v9, :cond_e

    .line 232
    move/from16 v20, v41

    .line 236
    .restart local v20    # "p":I
    mul-int v2, v26, v19

    shr-int v2, v2, v29

    mul-int v4, v16, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    mul-int v4, v12, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    aput v2, v3, v20

    .line 238
    sub-int v26, v26, v25

    .line 239
    sub-int v16, v16, v15

    .line 240
    sub-int/2addr v12, v11

    .line 242
    move-object/from16 v0, v33

    iget v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    sub-int v25, v25, v2

    .line 243
    move-object/from16 v0, v33

    iget v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    sub-int/2addr v15, v2

    .line 244
    move-object/from16 v0, v33

    iget v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    sub-int/2addr v11, v2

    .line 246
    add-int v20, v40, v27

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .end local v20    # "p":I
    :goto_c
    mul-int v2, v20, v5

    add-int v20, v39, v2

    .line 251
    .restart local v20    # "p":I
    aget v2, v3, v20

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    add-int v24, v24, v2

    add-int v26, v26, v24

    .line 252
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    add-int/2addr v14, v2

    add-int v16, v16, v14

    .line 253
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    add-int/2addr v10, v2

    add-int/2addr v12, v10

    .line 255
    move-object/from16 v0, v33

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v33, v0

    .line 257
    move-object/from16 v0, v34

    iget v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->r:I

    move/from16 v23, v0

    add-int v25, v25, v23

    .line 258
    move-object/from16 v0, v34

    iget v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->g:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 259
    move-object/from16 v0, v34

    iget v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->b:I

    move/from16 v21, v0

    add-int v11, v11, v21

    .line 261
    sub-int v24, v24, v23

    .line 262
    sub-int v14, v14, v22

    .line 263
    sub-int v10, v10, v21

    .line 265
    move-object/from16 v0, v34

    iget-object v0, v0, Lme/grishka/appkit/imageloader/StackBlur$BlurStack;->next:Lme/grishka/appkit/imageloader/StackBlur$BlurStack;

    move-object/from16 v34, v0

    .line 267
    add-int v41, v41, v5

    .line 230
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_b

    :cond_d
    move/from16 v20, v17

    .line 246
    goto :goto_c

    .line 176
    .end local v20    # "p":I
    :cond_e
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    .line 272
    .end local v10    # "b_in_sum":I
    .end local v11    # "b_out_sum":I
    .end local v12    # "b_sum":I
    .end local v14    # "g_in_sum":I
    .end local v15    # "g_out_sum":I
    .end local v16    # "g_sum":I
    .end local v21    # "pb":I
    .end local v22    # "pg":I
    .end local v23    # "pr":I
    .end local v24    # "r_in_sum":I
    .end local v25    # "r_out_sum":I
    .end local v26    # "r_sum":I
    .end local v42    # "yp":I
    :cond_f
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method
