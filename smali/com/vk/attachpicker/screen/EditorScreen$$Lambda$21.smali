.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/F0;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$21;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vkcoffee/android/functions/F0;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$21;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$21;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    return-object v0
.end method


# virtual methods
.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$21;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-virtual {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$renderAndFinish$106()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
