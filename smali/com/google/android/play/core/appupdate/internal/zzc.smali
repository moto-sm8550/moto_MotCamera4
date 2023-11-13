.class public final Lcom/google/android/play/core/appupdate/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/play/core/appupdate/internal/zzc;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Parcel data not fully consumed, unread size: "

    .line 3
    invoke-static {v1, p0}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
