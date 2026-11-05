# HOPE. inc Developer Handoff

## Hi-fi mockups included

- **Main page**: `#home`
  - Hero workspace introduction
  - Primary call to action to the Systems page
  - About preview shown only on Home
- **Dashboard**: `#dashboard`
  - Workspace overview, activity chart, team imagery, and metrics
- **User Management**: `#users`
  - Member list with role, status, search field, and Add user wireframe action
- **Rights dialog**
  - Opened from any User Management row with **Edit rights**
  - Permission checkboxes for Dashboard, User management, Business systems, and Reports & exports
  - Cancel and Save rights actions
- **Login mockup**
  - Opened with **Log in**
  - Email/password fields, password reveal, remember me, forgot password, and registration link
- **Register mockup**
  - Opened with **Create account**
  - Name, email, password, password reveal, and login link

## Navigation

The single-page prototype uses hash routes:

| View | Hash |
|---|---|
| Main page | `#home` |
| Dashboard | `#dashboard` |
| User Management | `#users` |
| Systems | `#systems` |
| About | `#about` |

Only the selected page section is visible. The menu toggle exposes the same navigation on small screens.

## Integration points

- Replace the sample user rows with API data in the User Management table.
- Connect the Add user action to the registration/invitation flow.
- Persist Rights dialog checkbox values through the permissions API.
- Replace the current auth form status messages with the authentication service.
- Replace the sample dashboard metrics and Unsplash image URLs with production data/assets.
- Theme preference is stored in `localStorage` under the `theme` key.

## Current prototype behavior

The forms and permission actions intentionally prevent submission and display confirmation/status messages locally. No authentication, user persistence, or permissions API is connected yet.

## Logged-in workspace

After a successful prototype login, the public landing page is replaced by a workspace shell that follows the existing HOPE. inc visual language:

- Overview dashboard with activity metrics, chart, and recent activity
- Business systems module cards for Products, Human Resources, Sales, and Customers
- Reports placeholder
- User Management navigation for Admin and Super Admin roles
- Rights actions filtered by role
- Persistent session and logout through `localStorage`

Demo role accounts:

- `ceo@hope.com` or `superadmin@hope.com` — Super Admin
- `admin@hope.com` — Admin
- Any password is accepted in this frontend prototype
