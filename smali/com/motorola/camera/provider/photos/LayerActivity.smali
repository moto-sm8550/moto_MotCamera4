.class public Lcom/motorola/camera/provider/photos/LayerActivity;
.super Lcom/motorola/camera/provider/photos/PhotosActivity;
.source "LayerActivity.java"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/provider/photos/PhotosActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGooglePlayUri()Landroid/net/Uri;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "com.motorola.photoeditor"

    aput-object v1, p0, v0

    const-string v0, "market://details?id=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetComponent()Landroid/content/ComponentName;
    .locals 2

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.motorola.photoeditor"

    const-string v1, "com.android.gallery3d.filtershow.FilterShowLayerActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
