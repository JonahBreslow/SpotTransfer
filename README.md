# SpotTransfer

## Overview

SpotTransfer lets you instantly migrate any Spotify playlist to YouTube Music—no manual copy-pasting needed.

[![](https://api.star-history.com/svg?repos=Pushan2005/SpotTransfer&type=date&legend=top-left)](https://www.star-history.com/#Pushan2005/SpotTransfer&type=date&legend=top-left)

<!-- start history service seems to be down -->

## Quick Start

Prerequisites:

-   Python 3.10+
-   uv (https://github.com/astral-sh/uv)
-   Node.js 14+ (with npm)
-   Spotify Developer account (client ID & secret)

Clone and install both backend and frontend:

```bash
git clone https://github.com/Pushan2005/SpotTransfer.git
cd SpotTransfer
```

### Backend Setup

1. Navigate to the `backend` directory:
    ```bash
    cd backend/
    ```
2. Install the Python dependencies with `uv`:
    ```bash
    uv sync
    ```
3. Rename `.env.example` to `.env` and add your Spotify credentials (get these from the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/)):
    ```env
    SPOTIPY_CLIENT_ID=<your_spotify_client_id>
    SPOTIPY_CLIENT_SECRET=<your_spotify_client_secret>
    ```
4. Start the Flask server:
    ```bash
    uv run python main.py
    ```

### Frontend Setup

1. In the `frontend` directory, rename `.env.example` to `.env` and make any changes to the variable if required:
    ```env
    VITE_API_URL=http://localhost:8080
    ```
2. Install the frontend dependencies:
    ```bash
    npm install
    ```
3. Run the dev server for the frontend:
    ```bash
    npm run dev
    ```
    If you wish, you can build the app and serve it as well but the dev server works just fine for now.
4. Open your browser and go to `http://localhost:5173`.
