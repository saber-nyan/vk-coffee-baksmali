.class public Lcom/google/android/gms/gcm/zzd;
.super Ljava/lang/Object;


# static fields
.field public static final zzaMc:Lcom/google/android/gms/gcm/zzd;

.field public static final zzaMd:Lcom/google/android/gms/gcm/zzd;


# instance fields
.field private final zzaMe:I

.field private final zzaMf:I

.field private final zzaMg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe10

    const/16 v2, 0x1e

    new-instance v0, Lcom/google/android/gms/gcm/zzd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzd;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzd;->zzaMc:Lcom/google/android/gms/gcm/zzd;

    new-instance v0, Lcom/google/android/gms/gcm/zzd;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzd;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzd;->zzaMd:Lcom/google/android/gms/gcm/zzd;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzd;->zzaMe:I

    iput p2, p0, Lcom/google/android/gms/gcm/zzd;->zzaMf:I

    iput p3, p0, Lcom/google/android/gms/gcm/zzd;->zzaMg:I

    return-void
.end method


# virtual methods
.method public zzF(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "retry_policy"

    iget v1, p0, Lcom/google/android/gms/gcm/zzd;->zzaMe:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "initial_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzd;->zzaMf:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "maximum_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzd;->zzaMg:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public zzym()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzd;->zzaMe:I

    return v0
.end method

.method public zzyn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzd;->zzaMf:I

    return v0
.end method

.method public zzyo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzd;->zzaMg:I

    return v0
.end method
