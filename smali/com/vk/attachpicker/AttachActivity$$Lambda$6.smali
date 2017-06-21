.class final synthetic Lcom/vk/attachpicker/AttachActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/OnItemClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$$Lambda$6;->arg$1:Lcom/vk/attachpicker/AttachActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/AttachActivity$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/AttachActivity$$Lambda$6;-><init>(Lcom/vk/attachpicker/AttachActivity;)V

    return-object v0
.end method


# virtual methods
.method public onItemClickListener(I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$$Lambda$6;->arg$1:Lcom/vk/attachpicker/AttachActivity;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/AttachActivity;->lambda$initViews$10(I)V

    return-void
.end method
