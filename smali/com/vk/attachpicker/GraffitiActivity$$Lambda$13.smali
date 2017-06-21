.class final synthetic Lcom/vk/attachpicker/GraffitiActivity$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/GraffitiActivity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/GraffitiActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$13;->arg$1:Lcom/vk/attachpicker/GraffitiActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$13;-><init>(Lcom/vk/attachpicker/GraffitiActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$13;->arg$1:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/GraffitiActivity;->lambda$finish$69(Landroid/content/DialogInterface;I)V

    return-void
.end method
