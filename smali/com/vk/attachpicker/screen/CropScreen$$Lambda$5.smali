.class final synthetic Lcom/vk/attachpicker/screen/CropScreen$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/CropScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/CropScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$5;->arg$1:Lcom/vk/attachpicker/screen/CropScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$5;-><init>(Lcom/vk/attachpicker/screen/CropScreen;)V

    return-object v0
.end method


# virtual methods
.method public onRotate(F)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$5;->arg$1:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/CropScreen;->lambda$createView$130(F)V

    return-void
.end method
