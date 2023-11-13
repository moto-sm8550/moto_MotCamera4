.class public final Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I

.field public final zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    iput p5, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Landroidx/databinding/library/R$id;->zza(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0}, Landroidx/databinding/library/R$id;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    const/4 v1, 0x3

    .line 7
    invoke-static {p1, v1, v0}, Landroidx/databinding/library/R$id;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 8
    iget v0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    const/4 v1, 0x4

    .line 9
    invoke-static {p1, v1, v0}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    .line 10
    iget p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    const/4 v0, 0x5

    .line 11
    invoke-static {p1, v0, p0}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    .line 12
    invoke-static {p1, p2}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
