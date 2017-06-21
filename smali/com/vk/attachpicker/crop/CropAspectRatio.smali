.class public Lcom/vk/attachpicker/crop/CropAspectRatio;
.super Ljava/lang/Object;
.source "CropAspectRatio.java"


# static fields
.field public static final CROP_3X4:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field public static final CROP_4X3:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field public static final CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field public static final CROP_SQUARE:Lcom/vk/attachpicker/crop/CropAspectRatio;


# instance fields
.field public final ar:F

.field public final id:I

.field public final titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    new-instance v0, Lcom/vk/attachpicker/crop/CropAspectRatio;

    const/4 v1, 0x0

    const v2, 0x7f080377

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/attachpicker/crop/CropAspectRatio;-><init>(FII)V

    sput-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 8
    new-instance v0, Lcom/vk/attachpicker/crop/CropAspectRatio;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f080381

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/attachpicker/crop/CropAspectRatio;-><init>(FII)V

    sput-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_SQUARE:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 9
    new-instance v0, Lcom/vk/attachpicker/crop/CropAspectRatio;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x7f08035b

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/attachpicker/crop/CropAspectRatio;-><init>(FII)V

    sput-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_3X4:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 10
    new-instance v0, Lcom/vk/attachpicker/crop/CropAspectRatio;

    const v1, 0x3faaaaab

    const v2, 0x7f08035c

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/attachpicker/crop/CropAspectRatio;-><init>(FII)V

    sput-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_4X3:Lcom/vk/attachpicker/crop/CropAspectRatio;

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 0
    .param p1, "ar"    # F
    .param p2, "titleResId"    # I
    .param p3, "id"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/vk/attachpicker/crop/CropAspectRatio;->ar:F

    .line 19
    iput p2, p0, Lcom/vk/attachpicker/crop/CropAspectRatio;->titleResId:I

    .line 20
    iput p3, p0, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    .line 21
    return-void
.end method
