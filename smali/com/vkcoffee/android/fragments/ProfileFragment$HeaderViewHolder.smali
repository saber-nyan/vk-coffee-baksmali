.class Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private photo:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    .line 947
    const v0, 0x7f100387

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    .line 948
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 998
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x36322f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 999
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 36
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$14(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/ViewGroup;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff8000000000000L    # 1.5

    div-double v14, v28, v30

    .line 952
    .local v14, "height":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photoRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff8000000000000L    # 1.5

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->round(D)J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 995
    :goto_0
    return-void

    .line 956
    :cond_0
    const/16 v16, 0x1

    .line 957
    .local v16, "moveTop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v22, v28, v30

    .line 958
    .local v22, "photoRatio":D
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 959
    .local v24, "photoWidth":D
    div-double v20, v24, v22

    .line 960
    .local v20, "photoHeight":D
    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    cmpl-double v17, v22, v28

    if-lez v17, :cond_1

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v24, v28, v22

    .line 963
    const/16 v16, 0x0

    .line 965
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photoRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v17, v17, v28

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 966
    .local v8, "bmpX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photoRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v17, v17, v28

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 967
    .local v9, "bmpY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photoRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v17, v17, v28

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 968
    .local v7, "bmpW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photoRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v17, v17, v28

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 969
    .local v6, "bmpH":I
    div-int/lit8 v17, v7, 0x2

    add-int v17, v17, v8

    move/from16 v0, v17

    int-to-double v10, v0

    .line 970
    .local v10, "centerX":D
    add-int v17, v9, v6

    move/from16 v0, v17

    int-to-double v12, v0

    .line 971
    .local v12, "centerY":D
    if-eqz v16, :cond_4

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3ff8000000000000L    # 1.5

    div-double v14, v28, v30

    .line 974
    int-to-double v0, v6

    move-wide/from16 v28, v0

    cmpl-double v17, v28, v14

    if-lez v17, :cond_3

    .line 975
    const-wide v26, 0x40047ae147ae147bL    # 2.56

    .line 979
    .local v26, "rectOffsetY":D
    :goto_1
    int-to-double v0, v6

    move-wide/from16 v28, v0

    int-to-double v0, v6

    move-wide/from16 v30, v0

    div-double v30, v30, v26

    sub-double v28, v28, v30

    sub-double v12, v12, v28

    .line 980
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v28, v14, v28

    sub-double v18, v28, v12

    .line 981
    .local v18, "offsetY":D
    int-to-double v0, v6

    move-wide/from16 v28, v0

    cmpl-double v17, v28, v14

    if-lez v17, :cond_2

    div-int/lit8 v17, v6, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v12, v28

    const-wide/16 v30, 0x0

    cmpl-double v17, v28, v30

    if-ltz v17, :cond_2

    .line 982
    neg-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 984
    :cond_2
    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    div-double v28, v24, v28

    move-wide/from16 v0, v28

    double-to-int v6, v0

    .line 985
    const/4 v8, 0x0

    .line 986
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v9, v0

    .line 987
    move-wide/from16 v0, v24

    double-to-int v7, v0

    .line 994
    .end local v18    # "offsetY":D
    .end local v26    # "rectOffsetY":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$HeaderViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 977
    :cond_3
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .restart local v26    # "rectOffsetY":D
    goto :goto_1

    .line 989
    .end local v26    # "rectOffsetY":D
    :cond_4
    move-wide/from16 v0, v20

    double-to-int v6, v0

    .line 990
    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    mul-double v28, v28, v20

    move-wide/from16 v0, v28

    double-to-int v7, v0

    .line 991
    const-wide/16 v28, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff8000000000000L    # 1.5

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    sub-double v30, v30, v10

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v8, v0

    .line 992
    const/4 v9, 0x0

    goto :goto_2
.end method
