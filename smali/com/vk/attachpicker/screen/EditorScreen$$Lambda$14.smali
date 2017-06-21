.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$14;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$14;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$14;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    return-object v0
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$14;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$createView$93(I)V

    return-void
.end method
