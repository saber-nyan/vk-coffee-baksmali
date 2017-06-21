.class final synthetic Lcom/vk/attachpicker/GraffitiActivity$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/GraffitiActivity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/GraffitiActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$15;->arg$1:Lcom/vk/attachpicker/GraffitiActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$15;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$15;-><init>(Lcom/vk/attachpicker/GraffitiActivity;)V

    return-object v0
.end method


# virtual methods
.method public onWidthSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$15;->arg$1:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/GraffitiActivity;->lambda$null$57(I)V

    return-void
.end method
