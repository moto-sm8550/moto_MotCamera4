.class public final Lcom/motorola/camera/provider/photos/PhotosPreloader;
.super Ljava/lang/Object;
.source "PhotosPreloader.kt"


# static fields
.field public static final GALLERY_AUTHORITY_URI:Landroid/net/Uri;

.field public static final PHOTOS_AUTHORITY_URI:Landroid/net/Uri;


# instance fields
.field public isServiceBound:Z

.field public final serviceConnection:Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.motorola.cn.gallery.provider.galleryprovider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->GALLERY_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.google.android.apps.photos.partnercontentprovider"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    invoke-direct {v0}, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->serviceConnection:Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    return-void
.end method
