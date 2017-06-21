.class final synthetic Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final instance:Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;

    invoke-direct {v0}, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;->instance:Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    sget-object v0, Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;->instance:Lcom/vk/attachpicker/GraffitiActivity$$Lambda$14;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/vk/attachpicker/GraffitiActivity;->lambda$finish$70(Landroid/content/DialogInterface;I)V

    return-void
.end method
