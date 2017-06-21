.class final synthetic Lcom/vk/attachpicker/GraffitiActivity$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/GraffitiActivity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/GraffitiActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$5;->arg$1:Lcom/vk/attachpicker/GraffitiActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View$OnLongClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$5;-><init>(Lcom/vk/attachpicker/GraffitiActivity;)V

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$5;->arg$1:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/GraffitiActivity;->lambda$onCreate$61(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
