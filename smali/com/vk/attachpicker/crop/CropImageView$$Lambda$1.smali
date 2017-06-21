.class final synthetic Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/crop/CropImageView;

.field private final arg$10:F

.field private final arg$2:F

.field private final arg$3:[F

.field private final arg$4:F

.field private final arg$5:F

.field private final arg$6:F

.field private final arg$7:F

.field private final arg$8:[F

.field private final arg$9:[F


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/crop/CropImageView;F[FFFFF[F[FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/crop/CropImageView;

    iput p2, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$2:F

    iput-object p3, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$3:[F

    iput p4, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$4:F

    iput p5, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$5:F

    iput p6, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$6:F

    iput p7, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$7:F

    iput-object p8, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$8:[F

    iput-object p9, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$9:[F

    iput p10, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$10:F

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/crop/CropImageView;F[FFFFF[F[FF)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 11

    new-instance v0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;-><init>(Lcom/vk/attachpicker/crop/CropImageView;F[FFFFF[F[FF)V

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/crop/CropImageView;

    iget v1, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$2:F

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$3:[F

    iget v3, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$4:F

    iget v4, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$5:F

    iget v5, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$6:F

    iget v6, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$7:F

    iget-object v7, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$8:[F

    iget-object v8, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$9:[F

    iget v9, p0, Lcom/vk/attachpicker/crop/CropImageView$$Lambda$1;->arg$10:F

    move-object v10, p1

    invoke-virtual/range {v0 .. v10}, Lcom/vk/attachpicker/crop/CropImageView;->lambda$createMovePreviewToCenterAnimator$22(F[FFFFF[F[FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
