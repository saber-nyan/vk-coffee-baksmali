.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

.field private final arg$2:Landroid/graphics/RectF;

.field private final arg$3:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/graphics/RectF;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->arg$2:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->arg$3:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/graphics/RectF;Landroid/app/Activity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/graphics/RectF;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->arg$2:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->arg$3:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$cropCloseAnimation$117(Landroid/graphics/RectF;Landroid/app/Activity;)V

    return-void
.end method
