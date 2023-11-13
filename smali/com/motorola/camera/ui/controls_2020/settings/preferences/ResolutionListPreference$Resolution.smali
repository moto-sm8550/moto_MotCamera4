.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;
.super Ljava/lang/Object;
.source "ResolutionListPreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resolution"
.end annotation


# instance fields
.field public isRecommended:Z

.field public isSelected:Z

.field public final sizeValue:Landroid/util/Size;

.field public final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    return-void
.end method
