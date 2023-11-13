.class public final synthetic Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    if-lez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->scrollDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->scrollDivider:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->scrollDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->scrollDivider:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
