.class public Lcom/vkcoffee/android/StackBlur;
.super Ljava/lang/Object;
.source "StackBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/StackBlur$BlurStack;
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

    sput-object v0, Lcom/vkcoffee/android/StackBlur;->mul_table:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkcoffee/android/StackBlur;->shg_table:[I

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

    .line 271
    return-void
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)V
    .locals 46
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 45
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 48
    :cond_0
    or-int/lit8 p1, p1, 0x0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 52
    .local v38, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 53
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

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 61
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 63
    .local v9, "height":I
    add-int v2, p1, p1

    add-int/lit8 v13, v2, 0x1

    .line 64
    .local v13, "div":I
    shl-int/lit8 v37, v5, 0x2

    .line 65
    .local v37, "w4":I
    add-int/lit8 v40, v5, -0x1

    .line 66
    .local v40, "widthMinus1":I
    add-int/lit8 v17, v9, -0x1

    .line 67
    .local v17, "heightMinus1":I
    add-int/lit8 v27, p1, 0x1

    .line 68
    .local v27, "radiusPlus1":I
    add-int/lit8 v2, v27, 0x1

    mul-int v2, v2, v27

    div-int/lit8 v36, v2, 0x2

    .line 70
    .local v36, "sumFactor":I
    new-instance v35, Lcom/vkcoffee/android/StackBlur$BlurStack;

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/StackBlur$BlurStack;-><init>(Lcom/vkcoffee/android/StackBlur$1;)V

    .line 71
    .local v35, "stackStart":Lcom/vkcoffee/android/StackBlur$BlurStack;
    move-object/from16 v30, v35

    .line 72
    .local v30, "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    const/16 v32, 0x0

    .line 73
    .local v32, "stackEnd":Lcom/vkcoffee/android/StackBlur$BlurStack;
    const/16 v18, 0x1

    .local v18, "i":I
    move-object/from16 v31, v30

    .end local v30    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    .local v31, "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    :goto_1
    move/from16 v0, v18

    if-ge v0, v13, :cond_2

    .line 74
    new-instance v30, Lcom/vkcoffee/android/StackBlur$BlurStack;

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/StackBlur$BlurStack;-><init>(Lcom/vkcoffee/android/StackBlur$1;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    .line 75
    .end local v31    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    .restart local v30    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 76
    move-object/from16 v32, v30

    .line 73
    :cond_1
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v30

    .end local v30    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    .restart local v31    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    goto :goto_1

    .line 79
    :cond_2
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    .line 80
    const/16 v33, 0x0

    .line 81
    .local v33, "stackIn":Lcom/vkcoffee/android/StackBlur$BlurStack;
    const/16 v34, 0x0

    .line 83
    .local v34, "stackOut":Lcom/vkcoffee/android/StackBlur$BlurStack;
    const/16 v43, 0x0

    .local v43, "yi":I
    move/from16 v45, v43

    .line 85
    .local v45, "yw":I
    sget-object v2, Lcom/vkcoffee/android/StackBlur;->mul_table:[I

    aget v19, v2, p1

    .line 86
    .local v19, "mul_sum":I
    sget-object v2, Lcom/vkcoffee/android/StackBlur;->shg_table:[I

    aget v29, v2, p1

    .line 88
    .local v29, "shg_sum":I
    const/16 v42, 0x0

    .local v42, "y":I
    move-object/from16 v30, v31

    .end local v31    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    .restart local v30    # "stack":Lcom/vkcoffee/android/StackBlur$BlurStack;
    :goto_2
    move/from16 v0, v42

    if-ge v0, v9, :cond_8

    .line 89
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

    .line 94
    .local v24, "r_in_sum":I
    aget v2, v3, v43

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .local v23, "pr":I
    mul-int v25, v27, v23

    .line 95
    .local v25, "r_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .local v22, "pg":I
    mul-int v15, v27, v22

    .line 96
    .local v15, "g_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .local v21, "pb":I
    mul-int v11, v27, v21

    .line 98
    .local v11, "b_out_sum":I
    mul-int v2, v36, v23

    add-int v26, v26, v2

    .line 99
    mul-int v2, v36, v22

    add-int v16, v16, v2

    .line 100
    mul-int v2, v36, v21

    add-int/2addr v12, v2

    .line 102
    move-object/from16 v30, v35

    .line 104
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 105
    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    .line 106
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    .line 107
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    .line 108
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 104
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 111
    :cond_3
    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 112
    move/from16 v0, v40

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move/from16 v2, v40

    :goto_5
    add-int v20, v43, v2

    .line 116
    .local v20, "p":I
    aget v2, v3, v20

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    sub-int v28, v27, v18

    .local v28, "rbs":I
    mul-int v2, v23, v28

    add-int v26, v26, v2

    .line 117
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    mul-int v2, v22, v28

    add-int v16, v16, v2

    .line 118
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    mul-int v2, v21, v28

    add-int/2addr v12, v2

    .line 120
    add-int v24, v24, v23

    .line 121
    add-int v14, v14, v22

    .line 122
    add-int v10, v10, v21

    .line 124
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 111
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .end local v20    # "p":I
    .end local v28    # "rbs":I
    :cond_4
    move/from16 v2, v18

    .line 112
    goto :goto_5

    .line 128
    :cond_5
    move-object/from16 v33, v35

    .line 129
    move-object/from16 v34, v32

    .line 130
    const/16 v41, 0x0

    .local v41, "x":I
    :goto_6
    move/from16 v0, v41

    if-ge v0, v5, :cond_7

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

    aput v2, v3, v43

    .line 136
    sub-int v26, v26, v25

    .line 137
    sub-int v16, v16, v15

    .line 138
    sub-int/2addr v12, v11

    .line 140
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    sub-int v25, v25, v2

    .line 141
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    sub-int/2addr v15, v2

    .line 142
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    sub-int/2addr v11, v2

    .line 144
    add-int v2, v41, p1

    add-int/lit8 v20, v2, 0x1

    .restart local v20    # "p":I
    move/from16 v0, v20

    move/from16 v1, v40

    if-ge v0, v1, :cond_6

    .end local v20    # "p":I
    :goto_7
    add-int v20, v20, v45

    .line 149
    .restart local v20    # "p":I
    aget v2, v3, v20

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    add-int v24, v24, v2

    .line 150
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    add-int/2addr v14, v2

    .line 151
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    add-int/2addr v10, v2

    .line 153
    add-int v26, v26, v24

    .line 154
    add-int v16, v16, v14

    .line 155
    add-int/2addr v12, v10

    .line 157
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v33, v0

    .line 159
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    move/from16 v23, v0

    add-int v25, v25, v23

    .line 160
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 161
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

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

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v34, v0

    .line 170
    add-int/lit8 v43, v43, 0x1

    .line 130
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    :cond_6
    move/from16 v20, v40

    .line 144
    goto :goto_7

    .line 172
    .end local v20    # "p":I
    :cond_7
    add-int v45, v45, v5

    .line 88
    add-int/lit8 v42, v42, 0x1

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
    .end local v41    # "x":I
    :cond_8
    const/16 v41, 0x0

    .restart local v41    # "x":I
    :goto_8
    move/from16 v0, v41

    if-ge v0, v5, :cond_e

    .line 177
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

    .line 179
    .restart local v14    # "g_in_sum":I
    move/from16 v43, v41

    .line 183
    aget v2, v3, v43

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .restart local v23    # "pr":I
    mul-int v25, v27, v23

    .line 184
    .restart local v25    # "r_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .restart local v22    # "pg":I
    mul-int v15, v27, v22

    .line 185
    .restart local v15    # "g_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .restart local v21    # "pb":I
    mul-int v11, v27, v21

    .line 187
    .restart local v11    # "b_out_sum":I
    mul-int v2, v36, v23

    add-int v26, v26, v2

    .line 188
    mul-int v2, v36, v22

    add-int v16, v16, v2

    .line 189
    mul-int v2, v36, v21

    add-int/2addr v12, v2

    .line 191
    move-object/from16 v30, v35

    .line 193
    const/16 v18, 0x0

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 194
    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    .line 195
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    .line 196
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    .line 197
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 193
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 200
    :cond_9
    move/from16 v44, v5

    .line 202
    .local v44, "yp":I
    const/16 v18, 0x1

    :goto_a
    move/from16 v0, v18

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    .line 203
    add-int v43, v44, v41

    .line 208
    aget v2, v3, v43

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    sub-int v28, v27, v18

    .restart local v28    # "rbs":I
    mul-int v2, v23, v28

    add-int v26, v26, v2

    .line 209
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    mul-int v2, v22, v28

    add-int v16, v16, v2

    .line 210
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    mul-int v2, v21, v28

    add-int/2addr v12, v2

    .line 212
    add-int v24, v24, v23

    .line 213
    add-int v14, v14, v22

    .line 214
    add-int v10, v10, v21

    .line 216
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 218
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 219
    add-int v44, v44, v5

    .line 202
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 223
    .end local v28    # "rbs":I
    :cond_b
    move/from16 v43, v41

    .line 224
    move-object/from16 v33, v35

    .line 225
    move-object/from16 v34, v32

    .line 226
    const/16 v42, 0x0

    :goto_b
    move/from16 v0, v42

    if-ge v0, v9, :cond_d

    .line 227
    move/from16 v20, v43

    .line 231
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

    .line 233
    sub-int v26, v26, v25

    .line 234
    sub-int v16, v16, v15

    .line 235
    sub-int/2addr v12, v11

    .line 237
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    sub-int v25, v25, v2

    .line 238
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    sub-int/2addr v15, v2

    .line 239
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    sub-int/2addr v11, v2

    .line 241
    add-int v20, v42, v27

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .end local v20    # "p":I
    :goto_c
    mul-int v2, v20, v5

    add-int v20, v41, v2

    .line 246
    .restart local v20    # "p":I
    aget v2, v3, v20

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    add-int v24, v24, v2

    add-int v26, v26, v24

    .line 247
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    add-int/2addr v14, v2

    add-int v16, v16, v14

    .line 248
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    add-int/2addr v10, v2

    add-int/2addr v12, v10

    .line 250
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v33, v0

    .line 252
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->r:I

    move/from16 v23, v0

    add-int v25, v25, v23

    .line 253
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->g:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 254
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->b:I

    move/from16 v21, v0

    add-int v11, v11, v21

    .line 256
    sub-int v24, v24, v23

    .line 257
    sub-int v14, v14, v22

    .line 258
    sub-int v10, v10, v21

    .line 260
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkcoffee/android/StackBlur$BlurStack;->next:Lcom/vkcoffee/android/StackBlur$BlurStack;

    move-object/from16 v34, v0

    .line 262
    add-int v43, v43, v5

    .line 226
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_b

    :cond_c
    move/from16 v20, v17

    .line 241
    goto :goto_c

    .line 176
    .end local v20    # "p":I
    :cond_d
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_8

    .line 267
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
    .end local v44    # "yp":I
    :cond_e
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 268
    const-string/jumbo v2, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StackBlur time "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v38

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
