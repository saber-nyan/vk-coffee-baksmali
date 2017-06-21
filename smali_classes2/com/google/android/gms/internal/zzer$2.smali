.class final Lcom/google/android/gms/internal/zzer$2;
.super Lcom/google/android/gms/internal/zzfa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzer;->zzt(I)Lcom/google/android/gms/internal/zzfa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzCn:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzer$2;->zzCn:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfa$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzeD()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzer$2;->zzCn:I

    return v0
.end method
